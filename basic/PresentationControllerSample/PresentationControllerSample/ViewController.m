//
//  ViewController.m
//  PresentationControllerSample
//
//  Created by eu on 2015/06/14.
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

- (IBAction)openPressed:(id)sender {
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"nextView"];
    
    [self presentViewController: vc animated:YES completion:nil];
}

@end
