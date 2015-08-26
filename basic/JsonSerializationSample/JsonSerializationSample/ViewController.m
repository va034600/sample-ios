//
//  ViewController.m
//  JsonSerializationSample
//
//  Created by eu on 2015/08/26.
//  Copyright (c) 2015年 eu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self print];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)print
{
    NSString *resourceName = @"data";
    NSString *resourceType = @"txt";
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *resourcePath = [bundle pathForResource:resourceName ofType:resourceType];

    NSError *error1 = nil;
    NSString *jsonString = [NSString stringWithContentsOfFile:resourcePath encoding:NSUTF8StringEncoding error:&error1];
    
    
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUnicodeStringEncoding];
    NSError *error;
    NSArray *array = [NSJSONSerialization JSONObjectWithData:jsonData
                                                     options:NSJSONReadingAllowFragments
                                                       error:&error];
    
    // JSON のオブジェクトは NSDictionary に変換されている
    for (NSDictionary *obj in array){
        NSString *aaa = [obj objectForKey:@"title"];
        NSLog(@"%@", aaa);
    }}

@end
