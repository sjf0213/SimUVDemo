//
//  User.h
//  SimUV
//
//  Created by song jufeng on 14-5-16.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (readonly, nonatomic, assign) NSUInteger userID;
@property (readonly, nonatomic, copy) NSString *username;
@property (readonly, nonatomic, unsafe_unretained) NSURL *avatarImageURL;

- (instancetype)initWithAttributes:(NSDictionary *)attributes;

#ifdef __MAC_OS_X_VERSION_MIN_REQUIRED
@property (nonatomic, strong) NSImage *profileImage;
#endif
@end
