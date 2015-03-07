//
//  ViewController.m
//  Layer2Sample
//
//  Created by eu on 2015/03/07.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "ViewController.h"
#import "LayerImageView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet LayerImageView *canvas;
@property (weak, nonatomic) IBOutlet LayerImageView *canvas2;

@end

int mode = 1;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.canvas.opaque = NO;
    self.canvas.backgroundColor = [UIColor colorWithWhite:1.0f alpha:0.0f];
    self.canvas2.opaque = NO;
    self.canvas2.backgroundColor = [UIColor colorWithWhite:1.0f alpha:0.0f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    LayerImageView *target;
    if(mode == 1){
        target = self.canvas;
    }else{
        target = self.canvas2;
    }

    UITouch *touch = [touches anyObject];
    CGPoint previousPoint = [touch previousLocationInView:target];
    CGPoint currentPoint = [touch locationInView:target];
    
    UIGraphicsBeginImageContextWithOptions(target.frame.size, NO, 0.0);
    CGContextRef c = UIGraphicsGetCurrentContext();
    [target.image drawInRect:target.bounds];
    CGContextSetLineWidth(c, 10.0);

    if(mode == 1){
        CGContextSetStrokeColorWithColor(c, [UIColor blueColor].CGColor);
    }else{
        CGContextSetStrokeColorWithColor(c, [UIColor redColor].CGColor);
    }

    CGContextSetLineCap(c, kCGLineCapRound);
    CGContextMoveToPoint(c, previousPoint.x, previousPoint.y);
    CGContextAddLineToPoint(c, currentPoint.x, currentPoint.y);
    CGContextStrokePath(c);
    target.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}

- (IBAction)layer1Pressed:(id)sender {
    mode = 1;
    [self.view exchangeSubviewAtIndex:1 withSubviewAtIndex:0];
}

- (IBAction)layer2Pressed:(id)sender {
    mode = 2;
    [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
}

@end
