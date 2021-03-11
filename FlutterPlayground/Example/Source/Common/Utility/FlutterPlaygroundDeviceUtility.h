//
//  FlutterPlaygroundDeviceUtility.h
//  FlutterPlayground
//
//  Created by Tom.Liu on 2021/3/5.
//  Copyright © 2021 Tom. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlutterPlaygroundDeviceUtility : NSObject

+ (int)fittedWidth:(CGFloat)val;
+ (int)fittedHeight:(CGFloat)val;
+ (BOOL)isIphoneXLater;

@end

NS_ASSUME_NONNULL_END
