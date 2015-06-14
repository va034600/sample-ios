//
//  NextViewController.m
//  PresentationControllerSample
//
//  Created by eu on 2015/06/14.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "NextViewController.h"
#import "NextPresentationController.h"

@interface NextViewController ()<UIViewControllerTransitioningDelegate>

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        if ([self respondsToSelector:@selector(setTransitioningDelegate:)]) {
            self.modalPresentationStyle = UIModalPresentationCustom;
            self.transitioningDelegate = self;
        }
    }
    return self;
}

- (IBAction)closeTouch:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UIViewControllerTransitioningDelegate

- (UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source {
    return [[NextPresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
}
@end
