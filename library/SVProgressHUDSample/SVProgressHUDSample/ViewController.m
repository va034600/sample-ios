//
//  ViewController.m
//  SVProgressHUDSample
//
//  Created by eu on 2015/03/18.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "ViewController.h"
#import <SVProgressHUD.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchUpInsideStartButton:(id)sender {
    [SVProgressHUD showWithMaskType:SVProgressHUDMaskTypeBlack];

    [self createTimer];
}

/**
 * タイマーを生成する
 */
- (void)createTimer
{
    // タイマーを生成（3秒後にdoTimer:メソッドを呼び出す．繰り返しなし）
    [NSTimer scheduledTimerWithTimeInterval:3.0f
                                     target:self
                                   selector:@selector(doTimer:)
                                   userInfo:nil
                                    repeats:NO
     ];
}

- (IBAction)touchUpInsideAlertButton:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"アラートタイトル"
                                                        message:@"アラートメッセージ"
                                                       delegate:self
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"OK", nil];
    [alertView show];
}

- (void)doTimer:(NSTimer *)timer
{
    [SVProgressHUD dismiss];
}

@end
