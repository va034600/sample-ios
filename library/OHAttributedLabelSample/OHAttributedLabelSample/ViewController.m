//
//  ViewController.m
//  OHAttributedLabelSample
//
//  Created by eu on 2015/08/28.
//  Copyright (c) 2015年 eu. All rights reserved.
//

#import "ViewController.h"
#import <OHAttributedLabel.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet OHAttributedLabel *attributedLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *text = @"ああああ#abc bbbc";
    NSMutableAttributedString *mAttributedString = [NSMutableAttributedString attributedStringWithString:text];
    NSRange linkRange = [text rangeOfString:@"#abc"];
    NSURL *linkUrl = [NSURL URLWithString:@"https://google.com/"];
    [mAttributedString setLink:linkUrl range:linkRange];
    self.attributedLabel.attributedText = mAttributedString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
