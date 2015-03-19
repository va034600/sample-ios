//
//  TestModel.m
//  MvcSample
//
//  Created by eu on 2015/03/19.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "TestModel.h"

@interface TestModel ()
@property (nonatomic, assign) NSInteger responseStatus;
@end

@implementation TestModel

static NSString *const observerKeyName = @"responseStatus";

+ (instancetype)sharedInstance
{
    static TestModel *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [self new];
    });
    return sharedInstance;
}

+ (void) loadData
{
    NSLog(@"load start");

    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
         NSLog(@"load response start");
         [TestModel sharedInstance].responseStatus = ((NSHTTPURLResponse *)response).statusCode;
//         NSLog(@"responseText = %@", [[NSString alloc] initWithData:data encoding:NSShiftJISStringEncoding]);
         NSLog(@"load response end");
     }
    ];

    NSLog(@"load end");
}

+ (NSInteger) getResponseStatus
{
    return [[self sharedInstance] responseStatus];
}

+ (BOOL)isObservedTarget:(NSObject *)object
{
    return [self sharedInstance] == object;
}

+ (void)addObserverForTarget:(NSObject *)observer
{
    [[self sharedInstance] addObserver:observer forKeyPath:observerKeyName options:NSKeyValueObservingOptionNew context:NULL];
}

+ (void)removeObserverWithTarget:(NSObject *)observer
{
    [[self sharedInstance] removeObserver:observer forKeyPath:observerKeyName];
}

@end
