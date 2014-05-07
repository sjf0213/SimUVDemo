//
//  TabbarView.m
//  SimUV
//
//  Created by song jufeng on 14-5-6.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import "TabbarView.h"
#import "TabbarButton.h"
//@interface TabbarView()
//-(void)onTabbarButtonClick:(id)sender;
//@end
@implementation TabbarView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor grayColor];
        NSArray* imgArray = @[@"uv_tab_home",
                              @"uv_tab_explore",
                              @"uv_tab_create",
                              @"uv_tab_notifications",
                              @"uv_tab_profile"];
        
        for (int i = 0; i < 5; i++)
        {
            TabbarButton* btn  = [[TabbarButton alloc] initWithFrame:CGRectMake(i*TABBAR_H, 0, TABBAR_H, TABBAR_H)];
            [btn setImage:[UIImage imageNamed:[imgArray objectAtIndex:i]] forState:UIControlStateNormal];
            btn.tag = i;
            [btn addTarget:self action:@selector(onTabbarButtonClick:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:btn];
        }
    }
    return self;
}

-(void)onTabbarButtonClick:(id)sender
{
    if (![sender isKindOfClass:[UIButton class]])
    {
        return;
    }
    UIButton* btn = (UIButton*)sender;
    for (UIButton* item in self.subviews)
    {
        if ([item isKindOfClass:[TabbarButton class]])
        {
            if (btn.tag == item.tag){
                [item setSelected:YES];
            }else{
                [item setSelected:NO];
            }
        }
    }
    
//    if (btn.tag != 1002 && [btn isKindOfClass:[TabbarButton class]])
//    {
//        ((PhoneMainTabBarButton*)btn).isSelect = YES;
//    }
    
    if ([self.parentResponder respondsToSelector:@selector(onTabBarButtonClick:)]) {
        [self.parentResponder performSelector:@selector(onTabBarButtonClick:) withObject:btn];
    }
}

@end
