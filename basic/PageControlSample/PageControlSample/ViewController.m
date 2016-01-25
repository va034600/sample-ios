//
//  ViewController.m
//  PageControlSample
//
//  Created by eu on 2016/01/25.
//  Copyright © 2016年 eu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.scrollView.pagingEnabled = YES;

    self.scrollView.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width * self.pageControl.numberOfPages, self.scrollView.frame.size.height);

    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;

    self.scrollView.delegate = self;

    UIView *contentView = [[UIView alloc]initWithFrame:_scrollView.frame];

    for(NSInteger i = 0; i < self.pageControl.numberOfPages; i++){
        UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width * i, 50, 100, 30)];
        label1.backgroundColor = [UIColor redColor];
        label1.text = [NSString stringWithFormat:@"%zd", i];
        [contentView addSubview:label1];
    }

    [self.scrollView addSubview:contentView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    CGFloat pageWidth = self.scrollView.frame.size.width;
    self.pageControl.currentPage = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth ) + 1;
}

- (IBAction)pageControlValueChanged:(id)sender {
    CGRect frame = self.scrollView.frame;

    frame.origin.x = frame.size.width * self.pageControl.currentPage;
    frame.origin.y = 0;

    [_scrollView scrollRectToVisible:frame animated:YES];
}

@end
