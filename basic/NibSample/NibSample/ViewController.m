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
    NextUIView *_customView = [[NextUIView alloc] init];
    _customView.frame = CGRectMake(30,214,260,140);
    [self.view addSubview:_customView];

}

@end
