//
//  ViewController.m
//  StoryBoardSample
//
//  Created by eu on 2015/03/13.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "ViewController.h"

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

- (IBAction)showNextStoryBoard:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"NextStoryBoard" bundle:nil];
    UIViewController *viewController = [storyboard instantiateInitialViewController];
    [self presentViewController: viewController animated:YES completion:nil];
}

@end
