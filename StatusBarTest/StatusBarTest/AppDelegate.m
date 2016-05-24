//
//  AppDelegate.m
//  StatusBarTest
//
//  Created by ZhangYunguang on 16/4/11.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "ZYGNavigationViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    MainViewController *main = [[MainViewController alloc] init];
    ZYGNavigationViewController *nav = [[ZYGNavigationViewController alloc] initWithRootViewController:main];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return YES;
}

/*
    可以控制屏幕方向的只有两个地方：1是window的rootViewController，2是presented的controller，这也就意味着如果我们的controller是push过来的，那么我们直接去调用改变屏幕方向的方法是不会起作用的
 */
//此方法替换了之前设置的屏幕方向，如果之前设置的是只支持竖屏，在这可以修改为只支持横屏
//-(UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window{
//    return UIInterfaceOrientationMaskPortrait;
//}
//-(BOOL)shouldAutorotate{
//    return YES;
//}
////而一旦上面设置了只支持比如竖屏（或者在配置里面设置了只支持竖屏），那么我们如果在这设置横屏是不起作用的
//-(NSUInteger)supportedInterfaceOrientations{
//    return UIInterfaceOrientationMaskPortrait;
//}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
