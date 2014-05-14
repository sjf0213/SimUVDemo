//
//  HomeViewController.m
//  SimUV
//
//  Created by song jufeng on 14-5-9.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
@property(nonatomic, strong)UITableView* mainTable;
@property(nonatomic, strong)UIView* topbar;
@end

@implementation HomeViewController


- (id)init
{
    self = [super init];
    if (self)
    {
        self.view.backgroundColor = TOPBAR_COLOR;
        self.topbar = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
        self.topbar.backgroundColor = TOPBAR_COLOR;
        
        UIImageView* logoImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"uv_glyph_feed_logo_minimal"]];
        logoImg.center = self.topbar.center;
        [self.topbar addSubview:logoImg];
        [self.view addSubview:self.topbar];
        
        self.mainTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        self.mainTable.contentInset = UIEdgeInsetsMake(64, 0, 64, 0);
        self.mainTable.backgroundColor = [UIColor blackColor];
        self.mainTable.separatorStyle = UITableViewCellSelectionStyleNone;
        [self.view addSubview:self.mainTable];
        
        [self.view bringSubviewToFront:self.topbar];
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

@end
