//
//  MainViewController.m
//  SimUV
//
//  Created by song jufeng on 14-5-6.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import "MainViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "TabbarView.h"
#import "HomeViewController.h"
//#import "PlusViewController.h"
#import "PlusView.h"
#import "PlusButton.h"
@interface MainViewController ()
@property(nonatomic, strong) PlusView* plusView;
@property(nonatomic, strong) PlusButton* plusBtn;
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
        {
            if (!homeController)
            {
                homeController = [[HomeViewController alloc] init];
                [self.view addSubview:homeController.view];
            }
            [self.view bringSubviewToFront:homeController.view];
        }
        break;
        case 2:
        {
            [self showPlusView];
        }
        break;
    }
}

-(void)showPlusView
{
    typeof(self) __weak wself = self;
    self.plusView = [[PlusView alloc] initWithFrame:CGRectMake(0,
                                                               self.view.frame.size.height,
                                                               self.view.frame.size.width,
                                                               self.view.frame.size.height)];
    [self.view addSubview:self.plusView];
    self.plusBtn = [[PlusButton alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height-64, 320, 64)];
    [self.plusBtn addTarget:self action:@selector(onTapPlusClose) forControlEvents:UIControlEventTouchUpInside];
    [self.plusBtn setSelected:YES];
    [self.view addSubview:self.plusBtn];
    
    [UIView animateWithDuration:0.3 animations:^{
        [wself.plusView setFrame:CGRectMake(0, 0, wself.plusView.frame.size.width, wself.plusView.frame.size.height)];
    }];
}

-(void)onTapPlusClose
{
    DLog(@"------------close plus------------");

    typeof(self) __weak wself = self;
    [self.plusBtn setSelected:NO];
    [UIView animateWithDuration:0.3 animations:^{
        [wself.plusView setFrame:CGRectMake(0, wself.view.frame.size.height, wself.plusView.frame.size.width, wself.plusView.frame.size.height)];
    } completion:^(BOOL finished){
        [wself.plusView removeFromSuperview];
        [wself.plusBtn removeFromSuperview];
    }];
}

@end
