// http://www.appcoda.com/uipageviewcontroller-tutorial-intro/
//
//  ViewController.m
//  PageViewControllerSample
//
//  Created by eu on 2016/01/25.
//  Copyright © 2016年 eu. All rights reserved.
//

#import "ViewController.h"
#import "ChildViewController.h"

@interface ViewController ()<UIPageViewControllerDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    self.dataSource = self;
    
    ChildViewController *initialViewController = [self viewControllerAtIndex:0];
    
    NSArray *viewControllers = [NSArray arrayWithObject:initialViewController];
    
    [self setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self didMoveToParentViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(ChildViewController *)viewController index];
    
    if (index == 0) {
        return nil;
    }
    
    index--;
    
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    NSUInteger index = [(ChildViewController *)viewController index];
    
    index++;
    
    if (index == 5) {
        return nil;
    }
    
    return [self viewControllerAtIndex:index];
    
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    return 5;
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    return 0;
}

#pragma mark -

- (ChildViewController *)viewControllerAtIndex:(NSUInteger)index {
    
    ChildViewController *childViewController = [[ChildViewController alloc] init];
    childViewController.index = index;
    
    return childViewController;
    
}

@end
