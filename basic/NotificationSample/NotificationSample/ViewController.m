//
//  ViewController.m
//  NotificationSample
//
//  Created by eu on 2015/03/17.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSNotificationCenter *notificationCenter = [NSNotificationCenter defaultCenter];
    [notificationCenter addObserver:self selector:@selector(receivedNotification) name:@"abc" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendNotification:(id)sender {
    NSNotification *notification = [NSNotification notificationWithName:@"abc" object:self];
    [[NSNotificationCenter defaultCenter] postNotification:notification];
}

-(void)receivedNotification{
    NSLog(@"aaa");
}

@end
