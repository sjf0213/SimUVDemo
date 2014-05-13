//
//  PlusButton.m
//  SimUV
//
//  Created by song jufeng on 14-5-13.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import "PlusButton.h"
@interface PlusButton()
@property(nonatomic, strong)UIImageView* iconImg;
@end

@implementation PlusButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor lightGrayColor];
        self.iconImg = [[UIImageView alloc] initWithFrame:CGRectMake(0.5*(self.frame.size.width-24), 0.5*(self.frame.size.height-24), 24, 24)];
        self.iconImg.image = [UIImage imageNamed:@"uv_tab_create"];
        self.iconImg.userInteractionEnabled = NO;
        [self addSubview:self.iconImg];
    }
    return self;
}

-(void)setSelected:(BOOL)selected
{
    if (selected)
    {
        [UIView animateWithDuration:0.3 animations:^{
            CATransform3D t = CATransform3DMakeRotation(-M_PI_4, 0., 0., 1.);
            self.iconImg.layer.transform = CATransform3DScale(t, 1.8, 1.8, 1.);
        }];
        
     }
    else
    {
        [UIView animateWithDuration:0.3 animations:^{
            self.iconImg.layer.transform = CATransform3DIdentity;
        }];
    }
}
@end
