//
//  PlusButton.m
//  SimUV
//
//  Created by song jufeng on 14-5-13.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import "PlusButton.h"

@implementation PlusButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor redColor];
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
    if (selected)
    {
        self.backgroundColor = [UIColor purpleColor];
    }
    else
    {
        self.backgroundColor = [UIColor redColor];
    }
    
}
@end
