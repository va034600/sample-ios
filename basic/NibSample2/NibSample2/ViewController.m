//
//  ViewController.m
//  NibSample2
//
//  Created by eu on 2015/02/23.
//  Copyright (c) 2015年 eu. All rights reserved.
//

#import "ViewController.h"
#import "PopupViewController.h"

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
    PopupViewController* popupViewController = [[PopupViewController alloc] init];
    [self addChildViewController:popupViewController];

    //子ViewControllerに追加が終わったことを通知する
    [popupViewController didMoveToParentViewController:self];
    [self.view addSubview:popupViewController.view];
}

@end
