//
//  workshop+SecondViewController.m
//  RouterTest
//
//  Created by Goko on 27/07/2017.
//  Copyright © 2017 Goko. All rights reserved.
//

#import "Workshop+SecondViewController.h"

@implementation Workshop (SecondViewController)

+(UIViewController *)SecondViewController_initWithTitle:(NSString *)title image:(UIImage *)image color:(UIColor *)color{
    return [self invokeSEL:_cmd params:title,image,color, nil];
}
+(UIViewController *)SecondViewController_initTest{
    return [self invokeSEL:_cmd params:nil];
}

@end
