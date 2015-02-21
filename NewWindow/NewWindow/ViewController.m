//
//  ViewController.m
//  NewWindow
//
//  Created by eu on 2015/02/18.
//  Copyright (c) 2015年 eu. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

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

- (IBAction)showNext:(UIButton *)sender {
    NextViewController *nextVc =  [self.storyboard instantiateViewControllerWithIdentifier:@"nextView"];
    [self presentViewController:nextVc animated:YES completion:nil];
}

@end
