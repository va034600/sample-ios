//
//  ABCViewController.m
//  RMPScrollingMenuBarControllerSample
//
//  Created by eu on 2016/04/11.
//  Copyright © 2016年 eu. All rights reserved.
//

#import "ABCViewController.h"

@interface ABCViewController ()<RMPScrollingMenuBarControllerDelegate>

@end

@implementation ABCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self setup];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - private methods
- (void)setup
{
    // Setup menu bar controller
    self.delegate = self;
    
    // Customize appearance of menu bar.
    self.view.backgroundColor = [UIColor whiteColor];
    self.menuBar.indicatorColor = [UIColor blueColor];
    
    // Set ViewControllers for menu bar controller
    NSMutableArray* viewControllers = [NSMutableArray array];
    for(int i = 0; i < 10; i++){
        UIViewController* vc = [[UIViewController alloc] init];
        vc.view.backgroundColor = [UIColor colorWithWhite:0.3+0.05*i alpha:1.0];
        [viewControllers addObject:vc];
    }
    
    [self setViewControllers:viewControllers];
}

#pragma mark - RMPScrollingMenuBarControllerDelegate methods
- (RMPScrollingMenuBarItem*)menuBarController:(RMPScrollingMenuBarController *)menuBarController
                           menuBarItemAtIndex:(NSInteger)index
{
    RMPScrollingMenuBarItem* item = [[RMPScrollingMenuBarItem alloc] init];
    item.title = [NSString stringWithFormat:@"Title %02ld", (long)(index+1)];
    
    // Customize appearance of menu bar item.
    UIButton* button = item.button;
    [button setTitleColor:[UIColor lightGrayColor]
                 forState:UIControlStateNormal];
    [button setTitleColor:[UIColor grayColor]
                 forState:UIControlStateDisabled];
    [button setTitleColor:[UIColor blueColor]
                 forState:UIControlStateSelected];
    return item;
}

- (void)menuBarController:(RMPScrollingMenuBarController *)menuBarController
 willSelectViewController:(UIViewController *)viewController
{
    NSLog(@"will select %@", viewController);
}

- (void)menuBarController:(RMPScrollingMenuBarController *)menuBarController
  didSelectViewController:(UIViewController *)viewController
{
    NSLog(@"did select %@", viewController);
}

- (void)menuBarController:(RMPScrollingMenuBarController *)menuBarController
  didCancelViewController:(UIViewController *)viewController
{
    NSLog(@"did cancel %@", viewController);
}

@end
