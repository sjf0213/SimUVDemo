//
//  AFUVApiClient.m
//  SimUV
//
//  Created by song jufeng on 14-5-16.
//  Copyright (c) 2014年 song jufeng. All rights reserved.
//

#import "AFUVApiClient.h"

static NSString * const AFUVApiBaseURLString = @"https://api.ultravisual.com//";

@implementation AFUVApiClient

+ (instancetype)sharedClient {
    static AFUVApiClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[AFUVApiClient alloc] initWithBaseURL:[NSURL URLWithString:AFUVApiBaseURLString]];
        _sharedClient.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeCertificate];
    });
    
    return _sharedClient;
}

@end
