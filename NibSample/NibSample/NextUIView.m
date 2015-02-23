//
//  NextUIView.m
//  NibSample
//
//  Created by eu on 2015/02/23.
//  Copyright (c) 2015年 eu. All rights reserved.
//

#import "NextUIView.h"

@implementation NextUIView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UINib *nib = [UINib nibWithNibName:@"NextView" bundle:[NSBundle mainBundle]];
        NSArray *array = [nib instantiateWithOwner:self options:nil];
        [self addSubview:[array objectAtIndex:0]];
        
    }
    return self;
}

- (IBAction)closeView:(id)sender {
    [self removeFromSuperview];
}

@end
