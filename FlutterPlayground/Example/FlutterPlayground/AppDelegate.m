//
//  AppDelegate.m
//  FlutterPlayground
//
//  Created by Tom on 03/11/2021.
//  Copyright (c) 2021 Tom. All rights reserved.
//

#import "AppDelegate.h"
#import "FlutterPlaygroundConfig.h"
#import "FPLoginViewController.h"
#import "FPTabBarController.h"
#import <Flutter/Flutter.h>

@interface AppDelegate () <UIApplicationDelegate, FlutterAppLifeCycleProvider>

@property (nonatomic, strong) FPLoginViewController *loginVC;
@property (nonatomic, strong) FPTabBarController *tabbarVC;
@end

@implementation AppDelegate
{
  FlutterPluginAppLifeCycleDelegate *_lifeCycleDelegate;
}
   
- (instancetype)init {
    if (self = [super init]) {
        _lifeCycleDelegate = [[FlutterPluginAppLifeCycleDelegate alloc] init];
    }
    return self;
}

 
- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    [self initForApp];

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return [_lifeCycleDelegate application:application didFinishLaunchingWithOptions:launchOptions];

}

#pragma mark
#pragma mark Init

- (void)initForApp
{
    [[FlutterPlaygroundConfig sharedInstance] initApp];
    BOOL isLogin = NO;
    if (isLogin)
    {
        [self initForMainViewController];
    }
    else
    {
        [self initForLoginViewController:NO];
    }
}

- (void)initForLoginViewController:(BOOL)animate
{
    __weak typeof(self) weakSelf = self;
    FPLoginViewController *loginViewController = [[FPLoginViewController alloc] init];
    loginViewController.loginCallBack = ^(BOOL success) {
      if (success)
      {
          [weakSelf initForMainViewController];
      }
    };
    self.window.rootViewController = loginViewController;
    if (animate)
    {
        CATransition *animation = [CATransition animation];
        animation.duration = 0.5;
        animation.type = kCATransitionReveal;
        animation.subtype = kCATransitionFromLeft;
        animation.timingFunction =
            [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
        [self.window.layer addAnimation:animation forKey:nil];
    }
}

- (void)initForMainViewController
{
    FPTabBarController * tabbarController  = [[FPTabBarController alloc] initWithContext:@""];
    [self.window setRootViewController:tabbarController];
    

    CATransition *animation = [CATransition animation];
    animation.duration = 0.5;
    animation.type = kCATransitionReveal;
    animation.subtype = kCATransitionFromRight;
    animation.timingFunction =
        [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    [self.window.layer addAnimation:animation forKey:nil];
}



//
//- (void)applicationDidEnterBackground:(UIApplication*)application {
//   
//    [_lifeCycleDelegate applicationDidEnterBackground:application];
//}
//
//- (void)applicationWillEnterForeground:(UIApplication*)application {
//[_lifeCycleDelegate applicationWillEnterForeground:application];
//}
//
//- (void)applicationWillResignActive:(UIApplication*)application {
//[_lifeCycleDelegate applicationWillResignActive:application];
//}
//
//- (void)applicationDidBecomeActive:(UIApplication*)application {
//[_lifeCycleDelegate applicationDidBecomeActive:application];
//}
//
//- (void)applicationWillTerminate:(UIApplication*)application {
//[_lifeCycleDelegate applicationWillTerminate:application];
//}

- (void)application:(UIApplication*)application
didRegisterUserNotificationSettings:(UIUserNotificationSettings*)notificationSettings {
[_lifeCycleDelegate application:application
didRegisterUserNotificationSettings:notificationSettings];
}

- (void)application:(UIApplication*)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData*)deviceToken {
[_lifeCycleDelegate application:application
didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
}

- (void)application:(UIApplication*)application
didReceiveRemoteNotification:(NSDictionary*)userInfo
fetchCompletionHandler:(void (^)(UIBackgroundFetchResult result))completionHandler {
[_lifeCycleDelegate application:application
   didReceiveRemoteNotification:userInfo
         fetchCompletionHandler:completionHandler];
}

- (BOOL)application:(UIApplication*)application
        openURL:(NSURL*)url
        options:(NSDictionary<UIApplicationOpenURLOptionsKey, id>*)options {
return [_lifeCycleDelegate application:application openURL:url options:options];
}

- (BOOL)application:(UIApplication*)application handleOpenURL:(NSURL*)url {
return [_lifeCycleDelegate application:application handleOpenURL:url];
}

- (BOOL)application:(UIApplication*)application
        openURL:(NSURL*)url
sourceApplication:(NSString*)sourceApplication
     annotation:(id)annotation {
return [_lifeCycleDelegate application:application
                               openURL:url
                     sourceApplication:sourceApplication
                            annotation:annotation];
}

- (void)application:(UIApplication*)application
performActionForShortcutItem:(UIApplicationShortcutItem*)shortcutItem
completionHandler:(void (^)(BOOL succeeded))completionHandler NS_AVAILABLE_IOS(9_0) {
[_lifeCycleDelegate application:application
   performActionForShortcutItem:shortcutItem
              completionHandler:completionHandler];
}

- (void)application:(UIApplication*)application
handleEventsForBackgroundURLSession:(nonnull NSString*)identifier
completionHandler:(nonnull void (^)(void))completionHandler {
[_lifeCycleDelegate application:application
handleEventsForBackgroundURLSession:identifier
              completionHandler:completionHandler];
}

- (void)application:(UIApplication*)application
performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult result))completionHandler {
[_lifeCycleDelegate application:application performFetchWithCompletionHandler:completionHandler];
}

- (void)addApplicationLifeCycleDelegate:(NSObject<FlutterPlugin>*)delegate {
[_lifeCycleDelegate addDelegate:delegate];
}

#pragma mark - Flutter
// Returns the key window's rootViewController, if it's a FlutterViewController.
// Otherwise, returns nil.
- (FlutterViewController*)rootFlutterViewController {
UIViewController* viewController = [UIApplication sharedApplication].keyWindow.rootViewController;
if ([viewController isKindOfClass:[FlutterViewController class]]) {
    return (FlutterViewController*)viewController;
}
return nil;
}

//- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event {
//[super touchesBegan:touches withEvent:event];
//
//// Pass status bar taps to key window Flutter rootViewController.
//if (self.rootFlutterViewController != nil) {
//    [self.rootFlutterViewController handleStatusBarTouches:event];
//}
//}


@end
