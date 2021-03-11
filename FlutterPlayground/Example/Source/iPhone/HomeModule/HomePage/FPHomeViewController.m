//
//  FPHomeViewController.m
//  FlutterPlayground
//
//  Created by Tom.Liu on 2021/2/23.
//  Copyright © 2021 Tom. All rights reserved.
//

#import "FPHomeViewController.h"
#import "FPTestViewController.h"
@interface FPHomeViewController ()
@property (weak, nonatomic) IBOutlet UIButton *pushPageButton;

@end

@implementation FPHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}


- (IBAction)pushToNextPage:(id)sender {
    FPTestViewController * vc = [[FPTestViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)setPushPageButton:(UIButton *)pushPageButton
{
    
    [pushPageButton setFrame:CGRectMake(25, ([UIScreen mainScreen].bounds.size.height - 44)/2.0, [UIScreen mainScreen].bounds.size.width - 25*2, 44)];
    [pushPageButton setTitle:@"Push (测试导航栏设置)" forState:UIControlStateNormal];
    [pushPageButton setTitleColor:[UIColor yk_themeColor] forState:UIControlStateNormal];
    [pushPageButton setBackgroundColor:[UIColor yk_lightBlueBgColor]];
    
    _pushPageButton = pushPageButton;
}
@end
