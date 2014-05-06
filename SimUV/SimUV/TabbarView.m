//
//  TabbarView.m
//  SimUV
//
//  Created by song jufeng on 14-5-6.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import "TabbarView.h"
#import "TabbarButton.h"

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
            [self addSubview:btn];
        }
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
