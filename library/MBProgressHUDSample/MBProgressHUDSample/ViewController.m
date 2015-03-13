//
//  ViewController.m
//  MBProgressHUDSample
//
//  Created by eu on 2015/03/13.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "ViewController.h"
#import <MBProgressHUD.h>

@interface ViewController ()

@end

MBProgressHUD *hud;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startButtonPressed:(id)sender {
    hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    
    //背景
    hud.dimBackground = YES;
    
    //テキスト
    [hud setLabelText:@"Loading..."];

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

- (void)doTimer:(NSTimer *)timer
{
    [hud hide:YES];
}


@end
