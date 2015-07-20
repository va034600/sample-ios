#import <UIKit/UIKit.h>

@interface OverlayView : UIView
@property(nonatomic, weak) id target;
@property(nonatomic, assign) SEL action;
@end
