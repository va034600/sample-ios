//
//  ViewController.m
//  KeyValueObservingExample
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
    [self addObserver:self forKeyPath:@"value" options:0 context:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)incrementButtonPressed:(id)sender {
    self.value++;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"%d", self.value);
}
@end
