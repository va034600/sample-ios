//
//  ViewController.m
//  NibSample
//
//  Created by eu on 2015/02/23.
//  Copyright (c) 2015年 eu. All rights reserved.
//

#import "ViewController.h"
#import "NextUIView.h"

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
- (IBAction)open:(id)sender {
    NextUIView *uiView = [[NextUIView alloc] initWithFrame:CGRectMake(30,250,150,100)];
    [self.view addSubview:uiView];
}

@end
