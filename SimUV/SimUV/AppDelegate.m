//
//  AppDelegate.m
//  SimUV
//
//  Created by song jufeng on 14-5-4.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    _rootcontroller = [[MainViewController alloc] init];
    //_rootcontroller.view.backgroundColor = [UIColor yellowColor];
    [self.window setRootViewController:_rootcontroller];
    
    // loading动画
    UIView* baseview = self.window.rootViewController.view;
    UIImageView* logoImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"uv_glyph_feed_logo_minimal"]];
    //logoImg.frame = CGRectMake(0, 0, 144, 72);
    logoImg.center = CGPointMake(baseview.center.x, baseview.center.y-16);
    logoImg.layer.transform = CATransform3DMakeScale(288/128.0, 288/128.0, 1.0);
    [baseview addSubview:logoImg];
    [baseview bringSubviewToFront:logoImg];
    [UIView animateWithDuration:0.3 animations:^{
        //logoImg.frame = CGRectMake(0.5*(baseview.frame.size.width-64), 16, 64, 32);
        logoImg.center = CGPointMake(baseview.center.x, 32);
        logoImg.layer.transform = CATransform3DIdentity;
        }completion:^(BOOL finished){
        
        
    }];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
