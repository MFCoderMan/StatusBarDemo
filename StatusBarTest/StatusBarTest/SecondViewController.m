//
//  SecondViewController.m
//  StatusBarTest
//
//  Created by ZhangYunguang on 16/4/11.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import "SecondViewController.h"
#define kScreenSize [[UIScreen mainScreen] bounds].size
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(kScreenSize.height/2 - 50, kScreenSize.width/2 - 20, 100, 40)];
//    button.center = self.view.center;
    button.backgroundColor = [UIColor orangeColor];
    [button setTitle:@"点我" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(screenChange) name:UIApplicationDidChangeStatusBarOrientationNotification object:nil];
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
//    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    
//    self.navigationController.view.window.transform = CGAffineTransformMakeRotation(M_PI_2);
//    self.navigationController.view.window.bounds = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width);
}
-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.view.window.transform = CGAffineTransformMakeRotation(M_PI_2);
    self.navigationController.view.window.bounds = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width);
}
-(void)viewWillDisappear:(BOOL)animated{
    self.navigationController.view.window.transform = CGAffineTransformMakeRotation(0);
    self.navigationController.view.window.bounds = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
}
-(void)screenChange{
    NSLog(@"屏幕旋转");
}
#pragma mark - 屏幕方向
//是否支持自动旋转，如果要强制横屏则需要设为NO（跳转到此页面需要用present的方式，否则强制横屏没有作用）
//-(BOOL)shouldAutorotate{
//    return NO;
//}
////首选方向（如果支持的方向比较多，可以设置此方向，那么刚进入这个界面时显示的就是此方向）
//-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
//    return UIInterfaceOrientationLandscapeRight;
//}
////在某个controller中可以重写此方法来达到改变屏幕方向的目的,在iPad上默认返回UIInterfaceOrientationMaskAll，而在iphone上默认返回UIInterfaceOrientationMaskAllButUpsideDown，如果controller上的内容仅仅需要在某个方向上去展示那么需要覆盖此方法，否则不需要
//-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
//    return UIInterfaceOrientationMaskLandscapeRight;
//}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}






-(void)buttonClick{
    [self dismissViewControllerAnimated:YES completion:nil];
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
