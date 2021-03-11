//
//  FlutterPlaygroundConfig.m
//  FlutterPlayground
//
//  Created by Tom on 03/11/2021.
//  Copyright (c) 2021 Tom. All rights reserved.
//

#import "FlutterPlaygroundConfig.h"

static FlutterPlaygroundConfig *sharedInstance = nil;

@interface FlutterPlaygroundConfig ()

@property (nonatomic, strong, readwrite) NSObject *currentUser;

@end

@implementation FlutterPlaygroundConfig

+ (FlutterPlaygroundConfig *)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
      sharedInstance = [[[self class] alloc] init];
    });
    return sharedInstance;
}

#pragma mark
#pragma mark App

- (void)initApp
{
}

#pragma mark
#pragma mark User

- (void)updateCurrentUser:(NSObject *)model
{
    _currentUser = model;
}

- (void)clearCurrentUser
{
    _currentUser = nil;
}

@end
