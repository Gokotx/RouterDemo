//
//  workshop+SecondViewController.h
//  RouterTest
//
//  Created by Goko on 27/07/2017.
//  Copyright © 2017 Goko. All rights reserved.
//

#import "Workshop.h"

@interface Workshop (SecondViewController)

//定义组件接口方法时格式如下（class_classOriginMethod）
+(UIViewController *)SecondViewController_initWithTitle:(NSString *)title image:(UIImage *)image color:(UIColor *)color;
+(UIViewController *)SecondViewController_initTest;

@end
