//
//  AppDelegate.m
//  UINavigationDemo1
//
//  Created by Chuanxi.Chen on 15/9/6.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self createNavigationController];
    [self NavigationItemSetting];
    
    [self.window makeKeyAndVisible];
    return YES;
}

#pragma mark - NavigationController
-(void)createNavigationController{
    FirstViewController *firstVC = [[FirstViewController alloc]init];
    UINavigationController *naVC = [[UINavigationController alloc]initWithRootViewController:firstVC];
    self.window.rootViewController = naVC;
}


#pragma mark -navigationItem
-(void)NavigationItemSetting{
    UINavigationController *navc =(UINavigationController *)self.window.rootViewController;

//    设置navigationBar的类型（暗指默认颜色：1.白色（默认）2.黑色）
    navc.navigationBar.barStyle = UIBarStyleDefault;

//    $设置navigationBar的半透明状态（默认为半透明）
//    navc.navigationBar.translucent = NO;
    navc.navigationBar.tintColor = [UIColor whiteColor];
//    navc.navigationBar.barTintColor = [UIColor colorWithRed:0.96 green:0.13 blue:0.49 alpha:1.00];
//建议不用
//    navc.navigationBar.backgroundColor = [UIColor colorWithRed:0.96 green:0.13 blue:0.49 alpha:1.00];
    
//    设置背景图片
//    UIBarMetricsCompact表示横屏 UIBarMetricsDefault表示竖屏
    [navc.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbg.png"] forBarMetrics:UIBarMetricsDefault];
    
//    设置是否隐藏navigationBar
//    [navc setNavigationBarHidden:NO animated:YES];
}





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
