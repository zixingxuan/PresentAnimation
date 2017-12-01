//
//  SecondViewController.m
//  PresentViewController
//
//  Created by DJAPpple_4 on 2017/9/21.
//  Copyright © 2017年 DJAPpple_4. All rights reserved.
//

#import "SecondViewController.h"

#define HScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define HScreenHeight ([UIScreen mainScreen].bounds.size.height)

@interface SecondViewController ()
@property (nonatomic, strong) UIView *topView;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor magentaColor];
}

/**
 *  设置位置宽高
 */
- (void)viewWillLayoutSubviews {
//    UIView *topView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, HScreenWidth, HScreenHeight * 0.25)];
//    topView.backgroundColor = [UIColor colorWithWhite:0.3 alpha:0.5];
//    self.topView = topView;
//    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(topTap)];
//    [self.topView addGestureRecognizer:tapGR];
//    [self.view.window addSubview:topView];
    
    self.view.frame = CGRectMake(self.view.frame.origin.x, HScreenHeight * 0.25, HScreenWidth, HScreenHeight * 0.75);
//    self.view.backgroundColor = [UIColor clearColor];
//    self.view.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.5];
}

- (void)topTap
{
    [self dismissViewControllerAnimated:YES completion:^{
        [self.topView removeFromSuperview];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
