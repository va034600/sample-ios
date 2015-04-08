//
//  ViewController.m
//  FileSample
//
//  Created by eu on 2015/04/08.
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

- (IBAction)saveCacheButtonTouchUpInside:(id)sender {
    //キャッシュ領域
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    [self save:path];
}

- (IBAction)saveTemporaryButtonTouchUpInside:(id)sender {
    //一時領域
    NSString *path = NSTemporaryDirectory();
    [self save:path];
}

- (IBAction)saveApplicationButtonTouchUpInside:(id)sender {
    //アプリ領域
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    [self save:path];
}

- (void)save:(NSString *) savedDirectory
{
    NSString *savedPath = [savedDirectory stringByAppendingPathComponent:@"test.txt"];
    NSLog(@"savedPath:%@", savedPath);
    
    NSData* data = [@"abc" dataUsingEncoding:NSUTF8StringEncoding];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    [fileManager createFileAtPath:savedPath contents:data attributes:nil];
}

@end
