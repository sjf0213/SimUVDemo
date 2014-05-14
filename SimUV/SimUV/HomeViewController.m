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
@end

@implementation HomeViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//        
//        
//    }
//    return self;
//}

- (id)init
{
    self = [super init];
    if (self)
    {
//        CGRect viewFrame = [[UIScreen mainScreen] bounds];
//        self
        self.view.backgroundColor = [UIColor colorWithRed:28/255.0 green:28/255.0 blue:31/255.0 alpha:1.0];
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
