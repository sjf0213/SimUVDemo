//
//  TabbarView.h
//  SimUV
//
//  Created by song jufeng on 14-5-6.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabbarView : UIView
@property(nonatomic,weak)id parentResponder;

-(void)setTabbarIndex:(NSInteger)index;
@end
