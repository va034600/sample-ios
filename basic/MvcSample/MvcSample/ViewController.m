//
//  ViewController.m
//  MvcSample
//
//  Created by eu on 2015/03/19.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "ViewController.h"
#import "TestModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //オブサーバ登録
    [TestModel addObserverForTarget:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    //オブサーバ削除
    [TestModel removeObserverWithTarget:self];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"observeValueForKeyPath start");
    if ([TestModel isObservedTarget:object])
    {
        NSOperationQueue* queue = [NSOperationQueue mainQueue];
        [queue addOperationWithBlock:^{
            self.statusLabel.text = [NSString stringWithFormat:@"%ld", [TestModel getResponseStatus]];
        }];
    }
    NSLog(@"observeValueForKeyPath end");
}

@end
