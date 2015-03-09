//
//  ViewController.m
//  SelectorSample
//
//  Created by eu on 2015/03/09.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"main start");

    NSString *value = @"テスト";
    NSMethodSignature *signature = [self methodSignatureForSelector:@selector(executeCallback:)];
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
    [invocation setSelector:@selector(executeCallback:)];
    [invocation setTarget:self];
    [invocation setArgument:&value atIndex:2];

    NSLog(@"invoke start");
    [invocation invoke];
    NSLog(@"invoke end");

    NSLog(@"main end");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)executeCallback:(NSString *)value {
    NSLog(@"callback value = %@", value);
}

@end
