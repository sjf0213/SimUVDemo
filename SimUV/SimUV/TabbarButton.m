//
//  TabbarButton.m
//  SimUV
//
//  Created by song jufeng on 14-5-6.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import "TabbarButton.h"

@implementation TabbarButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.5];
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
-(void)setSelected:(BOOL)selected
{
    if (selected){
        self.backgroundColor = [UIColor colorWithWhite:0.1 alpha:0.5];
    }else{
        self.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    }
}
@end
