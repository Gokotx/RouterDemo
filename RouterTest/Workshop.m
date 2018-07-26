//
//  workshop.m
//  RouterTest
//
//  Created by Goko on 26/07/2017.
//  Copyright © 2017 Goko. All rights reserved.
//

#import "Workshop.h"
#import <objc/runtime.h>
#import "ErrorViewController.h"
#import "RootNaigationController.h"
#import "MyAssertionHandler.h"

@interface Workshop ()

@end

@implementation Workshop

singleM(Workshop)
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSAssertionHandler *myHandler = [[MyAssertionHandler alloc] init];
        //给当前的线程添加
        [[[NSThread currentThread] threadDictionary] setValue:myHandler
                                                       forKey:NSAssertionHandlerKey];
    }
    return self;
}

//支持对象方法调用，不支持调用类方法
+(id)invokeSEL:(SEL)selector params:(id)param, ...{
    if (Workshop.shareWorkshop.errorHappend) {
        //防止发生错误后多次调用
        return nil;
    }
    NSArray * paramsArray = TotalParams(param);
    NSString * class_method = NSStringFromSelector(selector);
    NSArray * class_method_array = [class_method componentsSeparatedByString:@"_"];
    Class cls = NSClassFromString(class_method_array.firstObject);
    SEL sel = NSSelectorFromString(class_method_array.lastObject);
    id result = nil;
    Method classMethod = class_getClassMethod(cls, sel);
    if (classMethod) {
//        //类方法暂不支持调用、直接返回
        [self invokeError];
        NSAssert1(NO, @"invoke Class Method is not supported:%@",class_method);
        return nil;
    }
    Method instanceMethod = class_getInstanceMethod(cls, sel);
    if (instanceMethod) {
        int argumentsNumber = method_getNumberOfArguments(instanceMethod) - 2;
        if (argumentsNumber != paramsArray.count) {
            //参数个数不对
            NSLog(@"instance method params count error");
            NSAssert2(NO, @"instance method params count error%@-%@",instanceMethod,paramsArray);
            [self invokeError];
            return nil;
        }
        id instance = [cls new];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        result = [instance performSelector:sel withParamsArray:paramsArray];
#pragma clang diagnostic pop
    }else{
        [self invokeError];
        //统一返回出错页面，待处理
        return nil;
    }
    return result;
}


+(void)invokeError{
//    [self throwExceptionWithName:nil reason:nil userInfo:nil];
//    NSAssert(a == 2, @"a must equal to 2");
    Workshop.shareWorkshop.errorHappend = YES;
    return [[RootNaigationController shareRootNaigationController] pushViewController:[ErrorViewController new] animated:YES];
}


//xxx://[class]/[action]?foo=bar  兼容Android (ggj://redirect/resource/mallProduct?foo=bar)
+(id)openRemoteUrl:(NSString *)urlString{
//    NSURL * url = [NSURL URLWithString:urlString];
    //做具体的url router跳转
    NSURL * url = [NSURL URLWithString:@"ggj://redirect/resource/mallProduct?foo=bar&a=b&h5=http://wwww.baidu.com?c=d&e=f"];
    NSString * host = url.host;
    NSString * scheme = url.scheme;
    NSString * path = url.path;
    NSString * parameterString = url.parameterString;
    NSString * fragment = url.fragment;
    NSString * query = url.query;
    NSLog(@"\nscheme:%@\nhost:%@\npath:%@\nparameterString:%@\nfragment:%@\nquery:%@",scheme,host,path,parameterString,fragment,query);
    return nil;
}




@end
