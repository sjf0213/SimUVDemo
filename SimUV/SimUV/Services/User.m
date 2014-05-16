//
//  User.m
//  SimUV
//
//  Created by song jufeng on 14-5-16.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import "User.h"
#import "../../../Core/AFNetworking/AFHTTPRequestOperation.h"
@interface User ()
@property (readwrite, nonatomic, assign) NSUInteger userID;
@property (readwrite, nonatomic, copy) NSString *username;
@property (readwrite, nonatomic, copy) NSString *avatarImageURLString;
@property (readwrite, nonatomic, strong) AFHTTPRequestOperation *avatarImageRequestOperation;

#ifdef __MAC_OS_X_VERSION_MIN_REQUIRED
+ (NSOperationQueue *)sharedProfileImageRequestOperationQueue;
#endif
@end

@implementation User

- (instancetype)initWithAttributes:(NSDictionary *)attributes {
    self = [super init];
    if (!self) {
        return nil;
    }
    self.userID = (NSUInteger)[[attributes valueForKeyPath:@"id"] integerValue];
    self.username = [attributes valueForKeyPath:@"username"];
    self.avatarImageURLString = [attributes valueForKeyPath:@"avatar_image.url"];
    return self;
}

- (NSURL *)avatarImageURL {
    return [NSURL URLWithString:self.avatarImageURLString];
}

@end
