//
//  FPNetWorking.h
//  FlutterPlayground
//
//  Created by Tom.Liu on 2021/2/23.
//  Copyright © 2021 Tom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FPAPIMethod.h"
// #import <YKNetWorking/YKNetWorking.h>
NS_ASSUME_NONNULL_BEGIN

// @interface FPNetWorking : YKNetWorking

// #pragma mark -- 统一处理异常的方法 ,不会将Error返回给上层
// + (YKURLSessionTask *)syt_postWithApiClass:(kFPAPIClass)class
//                                   ApiMethod:(kFPAPIMethod)method
//                                 refreshCache:(BOOL)refreshCache
//                                       params:(NSDictionary *)params
// success:(YKResponseSuccess)success ;

// + (YKURLSessionTask *)syt_getWithApiClass:(kFPAPIClass)class
//                                   ApiMethod:(kFPAPIMethod)method
//                                 refreshCache:(BOOL)refreshCache
//                                       params:(NSDictionary *)params
// success:(YKResponseSuccess)success ;
 

// #pragma mark -- 单独获取异常


// + (YKURLSessionTask *)syt_postWithApiClass:(kFPAPIClass)class
//                                   ApiMethod:(kFPAPIMethod)method
//                                refreshCache:(BOOL)refreshCache
//                                      params:(NSDictionary *)params
//                                     success:(YKResponseSuccess)success
// fail:(YKResponseFail)fail ;


// + (YKURLSessionTask *)syt_getWithApiClass:(kFPAPIClass)class
//                                   ApiMethod:(kFPAPIMethod)method
//                                refreshCache:(BOOL)refreshCache
//                                      params:(NSDictionary *)params
//                                     success:(YKResponseSuccess)success
// fail:(YKResponseFail)fail;

// @end

NS_ASSUME_NONNULL_END
