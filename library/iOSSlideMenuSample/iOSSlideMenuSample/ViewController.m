//
//  ViewController.m
//  iOSSlideMenuSample
//
//  Created by eu on 2015/07/25.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "ViewController.h"
#import <SlideNavigationController.h>

@interface ViewController ()<SlideNavigationControllerDelegate>

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

- (BOOL)slideNavigationControllerShouldDisplayLeftMenu
{
    return YES;
}

- (BOOL)slideNavigationControllerShouldDisplayRightMenu
{
    return YES;
}

- (IBAction)showButtonTouchUpInside:(id)sender {
    NSLog(@"aa");
}

@end
