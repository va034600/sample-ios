//
//  TestView.m
//  LayerSample
//
//  Created by eu on 2015/03/06.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "TestView.h"

@implementation TestView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIBezierPath *line = [UIBezierPath bezierPath];
    [line moveToPoint:CGPointMake(25,50)];
    [line addLineToPoint:CGPointMake(200,300)];
    [line stroke];}
@end
