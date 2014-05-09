//
//  MainViewController.h
//  SimUV
//
//  Created by song jufeng on 14-5-6.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TabbarView;
@class HomeViewController;
@interface MainViewController : UIViewController
{
    TabbarView* tabbar;
    HomeViewController* homeController;
}
-(void)onTabBarButtonClick:(UIButton *)sender;
@end
