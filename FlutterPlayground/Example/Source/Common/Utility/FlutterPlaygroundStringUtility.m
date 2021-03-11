//
//  FlutterPlaygroundStringUtility.m
//  FlutterPlayground
//
//  Created by Tom on 03/11/2021.
//  Copyright (c) 2021 Tom. All rights reserved.
//

#import "FlutterPlaygroundStringUtility.h"

@implementation FlutterPlaygroundStringUtility

+ (NSString *)formatEmptyString:(NSString *)emptyString
{
    NSString *result = @"";
    if (emptyString != nil)
    {
        result = emptyString;
    }
    return [result copy];
}
@end
