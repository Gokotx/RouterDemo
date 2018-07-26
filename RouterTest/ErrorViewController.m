//
//  ErrorViewController.m
//  RouterTest
//
//  Created by Goko on 02/08/2017.
//  Copyright © 2017 Goko. All rights reserved.
//

#import "ErrorViewController.h"

@interface ErrorViewController ()

@end

@implementation ErrorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Error";
    self.view.backgroundColor = [UIColor brownColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc{
    Workshop.shareWorkshop.errorHappend = NO;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
