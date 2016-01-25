//
//  ChildViewController.m
//  PageViewControllerSample
//
//  Created by eu on 2016/01/25.
//  Copyright © 2016年 eu. All rights reserved.
//

#import "ChildViewController.h"

@interface ChildViewController ()

@end

@implementation ChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0,50,100,30)];
    label.text = [NSString stringWithFormat:@"%zd", self.index];

    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
