//
//  FPAPIMethod.m
//  FlutterPlayground
//
//  Created by Tom.Liu on 2021/2/23.
//  Copyright © 2021 Tom. All rights reserved.
//

#import "FPAPIMethod.h"

@implementation FPAPIMethod
 
#pragma mark --
#pragma mark -- public
+ (NSString *)apiUrlWithAPIMethod:(kFPAPIMethod)apiMethod   apiClass:(kFPAPIClass)apiClass   {
    NSString * methodString  = @"";
    switch (apiMethod) {
        case kFPAPIMethod_SalesmanList:
        {
            methodString = @"list";
        }
            break;
        default:
            break;
    }
    return  methodString = [NSString stringWithFormat:@"%@%@?%@",[self apiClassUrlWithAPIClass:apiClass],methodString,[self commanURLParameters]];
}



#pragma mark --
#pragma mark -- private

//每个接口都需要带有的参数
+ (NSString *)commanURLParameters {
//    [SYTUntil saasDefaultParamters]
    return @"";
}


+ (NSString *)apiServerUrl {
    NSString * serverString  = @"http://t-syt.lepass.cn/manager/";
//    if(isMock){
//        serverString = @"http://yapi.lepass.cn/mock/1831/manager/";
//    }
    return serverString;
}



+ (NSString *)apiClassUrlWithAPIClass:(kFPAPIClass) apiClass   {
    NSString * classString  = @"";
    switch (apiClass) {
        case kFPAPIClass_SalesmanManage:
        {
            classString = @"v2/bd/";
        }
            break;
        default:
            break;
    }
    return  [NSString stringWithFormat:@"%@%@",[self apiServerUrl], classString];
}

@end
