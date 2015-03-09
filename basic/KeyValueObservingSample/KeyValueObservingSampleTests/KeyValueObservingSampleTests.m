//
//  KeyValueObservingSampleTests.m
//  KeyValueObservingSampleTests
//
//  Created by eu on 2015/03/09.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface KeyValueObservingSampleTests : XCTestCase

@end

@implementation KeyValueObservingSampleTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSample {
    // This is an Sample of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceSample {
    // This is an Sample of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
