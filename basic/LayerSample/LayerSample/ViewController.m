//
//  ViewController.m
//  LayerSample
//
//  Created by eu on 2015/03/06.
//  Copyright (c) 2015年 va034600. All rights reserved.
//
//  http://www.raywenderlich.com/2502/calayers-tutorial-for-ios-introduction-to-calayers-tutorial
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.layer.backgroundColor = [UIColor orangeColor].CGColor;
    self.view.layer.cornerRadius = 20.0;
    self.view.layer.frame = CGRectInset(self.view.layer.frame, 20, 20);
    
    CALayer *sublayer = [CALayer layer];
    sublayer.backgroundColor = [UIColor blueColor].CGColor;
    sublayer.shadowOffset = CGSizeMake(0, 3);
    sublayer.shadowRadius = 5.0;
    sublayer.shadowColor = [UIColor blackColor].CGColor;
    sublayer.shadowOpacity = 0.8;
    sublayer.frame = CGRectMake(30, 30, 128, 192);
    [self.view.layer addSublayer:sublayer];
    
    CALayer *sublayer2 = [CALayer layer];
    sublayer2.backgroundColor = [UIColor yellowColor].CGColor;
    sublayer2.opacity = 0.5;
    sublayer2.frame = CGRectMake(100, 30, 128, 192);
    [self.view.layer addSublayer:sublayer2];
    
    TestView *testView = [[TestView alloc] initWithFrame:CGRectMake(20.f,20.f,300.f,300.f)];
    //背景透過
    testView.opaque = NO;
    testView.backgroundColor = [UIColor colorWithWhite:1.0f alpha:0.0f];
    [self.view addSubview:testView];
    
    TestView *test2View = [[TestView alloc] initWithFrame:CGRectMake(100.f,20.f,300.f,300.f)];
    test2View.opaque = NO;
    test2View.backgroundColor = [UIColor colorWithWhite:1.0f alpha:0.0f];
    [self.view addSubview:test2View];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
