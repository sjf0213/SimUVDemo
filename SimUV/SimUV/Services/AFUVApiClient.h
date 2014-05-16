//
//  AFUVApiClient.h
//  SimUV
//
//  Created by song jufeng on 14-5-16.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../../../Core/AFNetworking/AFHTTPSessionManager.h"
@interface AFUVApiClient : AFHTTPSessionManager
+ (instancetype)sharedClient;
@end
