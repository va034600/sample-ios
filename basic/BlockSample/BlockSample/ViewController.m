//
//  ViewController.m
//  SelectorSample
//
//  Created by eu on 2015/03/09.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "ViewController.h"

#if NS_BLOCKS_AVAILABLE
  typedef void (^CallbackHandler)(NSString *value);
#endif

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"main start");
    
    [self executeCallback:^(NSString *value2){
        NSLog(@"callback value = %@", value2);
    }:@"テスト" ];
    
    NSLog(@"main end");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)executeCallback:(CallbackHandler)handler :(NSString *)value{
    NSLog(@"callback start");
    handler(value);
    NSLog(@"callback end");
}

@end
