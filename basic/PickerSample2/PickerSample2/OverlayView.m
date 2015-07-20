#import "OverlayView.h"

@implementation OverlayView

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.target performSelector:self.action withObject:self afterDelay:0.0f];
}
@end
