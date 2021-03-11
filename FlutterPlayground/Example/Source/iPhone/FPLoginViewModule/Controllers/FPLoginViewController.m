//
//  FPLoginViewController.m
//  FlutterPlayground
//
//  Created by Tom on 03/11/2021.
//  Copyright (c) 2021 Tom. All rights reserved.
//

#import "FPLoginViewController.h"
#import "FPLoginViewModel.h"

@interface FPLoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *passWord;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@property (nonatomic, strong) FPLoginViewModel *viewModel;

@end

@implementation FPLoginViewController

#pragma mark
#pragma mark Init

#pragma mark
#pragma mark Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self prepareForData];
    [self prepareForView];
    [self prepareForAction];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

#pragma mark
#pragma mark PrepareConfig

- (void)prepareForData
{
    self.viewModel = [[FPLoginViewModel alloc] init];
}

- (void)prepareForView
{
    UIButton * testLoginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [testLoginButton setFrame:CGRectMake(25, ([UIScreen mainScreen].bounds.size.height - 44)/2.0, [UIScreen mainScreen].bounds.size.width - 25*2, 44)];
    [testLoginButton setTitle:@"登录(测试页面转场)" forState:UIControlStateNormal];
    [testLoginButton setTitleColor:[UIColor yk_themeColor] forState:UIControlStateNormal];
    [testLoginButton setBackgroundColor:[UIColor yk_lightBlueBgColor]];
    [testLoginButton addTarget:self action:@selector(loggedIn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testLoginButton];
}

- (void)loggedIn {
    self.loginCallBack(YES);
}

- (void)prepareForAction
{
}

#pragma mark
#pragma mark XXXDelegate

#pragma mark
#pragma mark Event Response

- (IBAction)loginAction:(id)sender
{
    if (self.userName.text.length > 0 && self.passWord.text.length > 0)
    {
    }
}

#pragma mark
#pragma mark Getter/Setter

@end
