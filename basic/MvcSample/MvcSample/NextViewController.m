//
//  NextViewController.m
//  MvcSample
//
//  Created by eu on 2015/03/19.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "NextViewController.h"
#import "TestModel.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [TestModel loadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressedBack:(id)sender {
    //戻る
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
