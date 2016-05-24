//
//  ZYGNavigationViewController.m
//  StatusBarTest
//
//  Created by ZhangYunguang on 16/4/11.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import "ZYGNavigationViewController.h"

@interface ZYGNavigationViewController ()

@end

@implementation ZYGNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    UIViewController *vc = self.topViewController;
    return [vc preferredStatusBarStyle];
}
-(BOOL)prefersStatusBarHidden{
    UIViewController *vc = self.topViewController;
    return [vc prefersStatusBarHidden];
}

-(BOOL)shouldAutorotate{
    return [self.topViewController shouldAutorotate];
}
-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return [self.topViewController supportedInterfaceOrientations];
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
