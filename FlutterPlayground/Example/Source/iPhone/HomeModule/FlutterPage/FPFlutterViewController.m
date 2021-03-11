//
//  FPFlutterViewController.m
//  FlutterPlayground
//
//  Created by Tom on 2021/3/11.
//  Copyright © 2021 Tom. All rights reserved.
//

#import "FPFlutterViewController.h"
#import <Flutter/Flutter.h>
@interface FPFlutterViewController ()<FlutterStreamHandler>
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation FPFlutterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Flutter Module";
}

- (IBAction)pushWithParams:(id)sender {
    FlutterViewController* flutterViewController = [[FlutterViewController alloc] initWithProject:nil nibName:nil bundle:nil];
    flutterViewController.navigationItem.title = @"EventChannel Demo";
    // 要与main.dart中一致
    NSString *channelName = @"com.pages.your/native_post";
    
    FlutterEventChannel *evenChannal = [FlutterEventChannel eventChannelWithName:channelName binaryMessenger:flutterViewController];
    // 代理
    [evenChannal setStreamHandler:self];
    
    [self.navigationController pushViewController:flutterViewController animated:YES];
    
}



#pragma mark - <FlutterStreamHandler>
// // 这个onListen是Flutter端开始监听这个channel时的回调，第二个参数 EventSink是用来传数据的载体。
- (FlutterError* _Nullable)onListenWithArguments:(id _Nullable)arguments
                                       eventSink:(FlutterEventSink)events {
    
    // arguments flutter给native的参数
    // 回调给flutter， 建议使用实例指向，因为该block可以使用多次
    if (events) {
        events(@"我是标题");
    }
    return nil;
}

/// flutter不再接收
- (FlutterError* _Nullable)onCancelWithArguments:(id _Nullable)arguments {
    // arguments flutter给native的参数
    return nil;
}



- (void)setButton:(UIButton *)button {
    [button setFrame:CGRectMake(25, ([UIScreen mainScreen].bounds.size.height - 44)/2.0, [UIScreen mainScreen].bounds.size.width - 25*2, 44)];
    
    [button setTitleColor:[UIColor yk_themeColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor yk_lightBlueBgColor]];
    
    _button = button;
}

@end
