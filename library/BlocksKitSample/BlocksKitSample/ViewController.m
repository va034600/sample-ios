//
//  ViewController.m
//  BlocksKitSample
//
//  Created by eu on 2015/02/24.
//  Copyright (c) 2015年 eu. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertView+BlocksKit.h"

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
- (IBAction)showAlert:(id)sender {
    [UIAlertView bk_showAlertViewWithTitle:@"タイトル"
                                   message:@"メッセージ"
                         cancelButtonTitle:@"キャンセル"
                         otherButtonTitles:@[@"ログ"]
                                   handler:^(UIAlertView *alertView, NSInteger buttonIndex) {
                                       NSLog(@"%d", buttonIndex);
                                   }];

}

@end
