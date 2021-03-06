#import "NextPresentationController.h"

@interface NextPresentationController ()
@end

@implementation NextPresentationController

- (void)presentationTransitionWillBegin {
    UIView *vi = [[UIView alloc] initWithFrame:self.containerView.bounds];
    vi.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];
    
    // タップイベント検知追加
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeTapped:)];
    [vi addGestureRecognizer:gestureRecognizer];

    [self.containerView addSubview:vi];
}


- (void)closeTapped:(id)sender
{
    [self.containerView removeFromSuperview];
}

- (CGRect)frameOfPresentedViewInContainerView {
    CGFloat size = 200;
    CGRect frame = CGRectMake((self.containerView.frame.size.width - size) / 2,
                              (self.containerView.frame.size.height - size) / 2,
                              size, size);
    return frame;
}

@end
