//
//  Post.m
//  SimUV
//
//  Created by song jufeng on 14-5-16.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import "Post.h"
#import "User.h"
#import "../Services/AFUVApiClient.h"

@implementation Post
- (instancetype)initWithAttributes:(NSDictionary *)attributes {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.postID = (NSUInteger)[[attributes valueForKeyPath:@"id"] integerValue];
    self.text = [attributes valueForKeyPath:@"text"];
    
    //self.user = [[User alloc] initWithAttributes:[attributes valueForKeyPath:@"user"]];
    
    return self;
}

#pragma mark -

//https://api.ultravisual.com/v1/collections?filter=subscription&include_collaborators=true&include_follow_status=true&limit=20&offset=0&username=sjf0213

+ (NSURLSessionDataTask *)globalTimelinePostsWithBlock:(void (^)(NSArray *posts, NSError *error))block {
    DLog(@" task------------");
    NSDictionary* param = @{@"filter": @"subscription",
                            @"include_collaborators":@"true",
                            @"include_follow_status":@"true",
                            @"limit":@20,
                            @"offset":@0,
                            @"username":@"sjf0213"};
    return [[AFUVApiClient sharedClient] GET:@"v1/collections" parameters:param success:^(NSURLSessionDataTask * __unused task, id JSON) {
        NSArray *postsFromResponse = [JSON valueForKeyPath:@"data"];
        DLog(@" postsFromResponse------------:%@", postsFromResponse);
//        NSMutableArray *mutablePosts = [NSMutableArray arrayWithCapacity:[postsFromResponse count]];
//        for (NSDictionary *attributes in postsFromResponse) {
//            Post *post = [[Post alloc] initWithAttributes:attributes];
//            [mutablePosts addObject:post];
//        }
//        if (block) {
//            block([NSArray arrayWithArray:mutablePosts], nil);
//        }
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error){
        DLog(@" fail------------:%@", error);
        if (block) {
            block([NSArray array], error);
        }
    }];
    return nil;
}
@end
