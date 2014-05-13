//
//  PlusView.m
//  SimUV
//
//  Created by song jufeng on 14-5-12.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import "PlusView.h"

@implementation PlusView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor grayColor];
        NSArray* titleArray = @[@"Drafts", @"Import", @"Camera"];
        NSArray* imgArray = @[@"uv_createnav_drafts", @"uv_createnav_import", @"uv_createnav_camera"];
        for (int i = 0; i < 3; i++)
        {
            UIButton* btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 75+i*130, frame.size.width, 130)];
            [btn setImage:[UIImage imageNamed:imgArray[i]] forState:UIControlStateNormal];
            btn.imageEdgeInsets = UIEdgeInsetsMake(25, 120, 25, 120);
            [btn setTitle:titleArray[i] forState:UIControlStateNormal];
            btn.titleEdgeInsets = UIEdgeInsetsMake(105, 0, 0, 80);
            
            [self addSubview:btn];
        }
    }
    return self;
}

@end
