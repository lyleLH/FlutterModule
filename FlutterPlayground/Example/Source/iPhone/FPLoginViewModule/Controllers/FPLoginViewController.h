//
//  FPLoginViewController.h
//  FlutterPlayground
//
//  Created by Tom on 03/11/2021.
//  Copyright (c) 2021 Tom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FPLoginViewController : UIViewController

@property (nonatomic, copy) void (^loginCallBack)(BOOL success);

@end
