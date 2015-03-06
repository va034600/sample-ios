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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
