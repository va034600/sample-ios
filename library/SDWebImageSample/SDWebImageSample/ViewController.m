//
//  ViewController.m
//  SDWebImageSample
//
//  Created by eu on 2015/04/02.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "ViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *targetImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSURL *url = [NSURL URLWithString:@"https://www.google.co.jp/images/srpr/logo11w.png"];
    [self.targetImageView sd_setImageWithURL:url placeholderImage:nil options:SDWebImageCacheMemoryOnly];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
