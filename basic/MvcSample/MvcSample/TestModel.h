//
//  TestModel.h
//  MvcSample
//
//  Created by eu on 2015/03/19.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestModel : NSObject

+ (void) loadData;
+ (NSInteger) getResponseStatus;

+ (BOOL)isObservedTarget:(NSObject *)object;
+ (void)addObserverForTarget:(NSObject *)observer;
+ (void)removeObserverWithTarget:(NSObject *)observer;

@end
