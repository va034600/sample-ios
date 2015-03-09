//
//  ViewController.m
//  KeyValueObserving2Sample
//
//  Created by eu on 2015/03/09.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "ViewController.h"
#import "SampleModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sampleModel = [[SampleModel alloc] init];
    [self.sampleModel addObserver:self forKeyPath:@"value2" options:0 context:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"%d", self.sampleModel.value2);
}

- (IBAction)incrementButtonPressed:(id)sender {
    self.sampleModel.value2++;
}

@end
