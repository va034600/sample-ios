//
//  ViewController.m
//  DrawSample
//
//  Created by eu on 2015/02/21.
//  Copyright (c) 2015年 eu. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *canvas;
@property (weak, nonatomic) IBOutlet UISegmentedControl *drawSwitch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint fromPoint = [touch previousLocationInView:self.canvas];
    CGPoint toPoint = [touch locationInView:self.canvas];

    UIGraphicsBeginImageContextWithOptions(self.canvas.frame.size, YES, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self.canvas.image drawInRect:self.canvas.bounds];

    switch(self.drawSwitch.selectedSegmentIndex){
        case 0:
            //色
            CGContextSetStrokeColorWithColor(context, [UIColor yellowColor].CGColor);
            break;
        case 1:
            //消しゴム
            CGContextSetBlendMode(context, kCGBlendModeClear);
    }

    //from to
    CGContextMoveToPoint(context, fromPoint.x, fromPoint.y);
    CGContextAddLineToPoint(context, toPoint.x, toPoint.y);

    //描画
    CGContextStrokePath(context);

    self.canvas.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}

- (IBAction)save:(id)sender {
    NSLog(@"save start");

    UIImage *image = self.canvas.image;
    UIGraphicsEndImageContext();
    NSData *imageData = UIImagePNGRepresentation(image);
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    [imageData writeToFile:[path stringByAppendingPathComponent:@"test.png"] atomically:YES];

    NSLog(@"save end");
}

- (IBAction)open:(id)sender {
    NSLog(@"open start");

    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    UIImage *image = [[UIImage alloc] initWithContentsOfFile:[path stringByAppendingPathComponent:@"test.png"] ];
    self.canvas.image = image;

    NSLog(@"open end");
}

@end
