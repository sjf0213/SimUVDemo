//
//  MainViewController.m
//  SimUV
//
//  Created by song jufeng on 14-5-6.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import "MainViewController.h"
#import "TabbarView.h"
#import "HomeViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        tabbar = [[TabbarView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height-TABBAR_H, self.view.frame.size.width, TABBAR_H)];
        tabbar.parentResponder = self;
        [self.view addSubview:tabbar];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)onTabBarButtonClick:(UIButton *)sender
{
    int index = (int)sender.tag;
    switch (index)
    {
        case 0:
            if (!homeController) {
                homeController = [[HomeViewController alloc] init];
                [self.view addSubview:homeController.view];
            }
            [self.view bringSubviewToFront:homeController.view];
            break;
    }
}

@end
