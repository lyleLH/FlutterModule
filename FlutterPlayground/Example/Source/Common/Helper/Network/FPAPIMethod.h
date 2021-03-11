//
//  FPAPIMethod.h
//  FlutterPlayground
//
//  Created by Tom.Liu on 2021/2/23.
//  Copyright © 2021 Tom. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


typedef NS_ENUM(NSUInteger, kFPAPIClass) {
    kFPAPIClass_SalesmanManage,
     
};

typedef NS_ENUM(NSUInteger, kFPAPIMethod) {
    kFPAPIMethod_SalesmanList,
    
};


@interface FPAPIMethod : NSObject

//根据 kSYTAPIClass 和 kSYTAPIMethod 来得到URL字符串
+ (NSString *)apiUrlWithAPIMethod:(kFPAPIMethod)apiMethod   apiClass:(kFPAPIClass)apiClass;

@end

NS_ASSUME_NONNULL_END
