//
//  ViewController.h
//  GrowingTextViewSample
//
//  Created by eu on 2016/01/07.
//  Copyright © 2016年 eu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <HPGrowingTextView.h>

@interface ViewController : UIViewController<HPGrowingTextViewDelegate>{
    UIView *containerView;
    HPGrowingTextView *textView;
}


@end

