//
//  FirstViewController.m
//  RouterTest
//
//  Created by Goko on 26/07/2017.
//  Copyright © 2017 Goko. All rights reserved.
//

#import "FirstViewController.h"
#import "Workshop+ImageUtils.h"
#import "Workshop+ColorUtils.h"
#import "Workshop+SecondViewController.h"


@interface FirstViewController ()

@end

@implementation FirstViewController
- (void)viewDidLoad {
    [super viewDidLoad];
//    int a = 1;
//    NSAssert(a == 2, @"a must equal to 2");
    // Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [Workshop openRemoteUrl:nil];
    UIImage * image = [Workshop ImageUtils_showImage:@"abc" type:@".png"];
    UIColor * color = [Workshop ColorUtils_randomColor];
    UIViewController * controller = [Workshop SecondViewController_initWithTitle:@"af" image:image color:color];
    if (controller) {
        [self.navigationController pushViewController:controller animated:YES];
    }
    NSLog(@"_prefix:set($method $line) My log message!");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
