//
//  MyAssertionHandler.m
//  RouterTest
//
//  Created by Goko on 03/08/2017.
//  Copyright © 2017 Goko. All rights reserved.
//

#import "MyAssertionHandler.h"

@implementation MyAssertionHandler

//处理Objective-C的断言
- (void)handleFailureInMethod:(SEL)selector object:(id)object file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format,...{
    NSLog(@"NSAssert Failure: Method %@ for object %@ in %@#%li\n", NSStringFromSelector(selector), object, fileName, (long)line);
}
//处理C的断言
- (void)handleFailureInFunction:(NSString *)functionName file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format,...{
    NSLog(@"NSCAssert Failure: Function (%@) in %@#%li", functionName, fileName, (long)line);
}


@end
