//
//  Picker.m
//  PickerSample2
//
//  Created by eu on 2015/07/20.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "Picker.h"
#import "OverlayView.h"

@interface Picker()<
UIPickerViewDelegate,
UIPickerViewDataSource
>
@property(nonatomic, strong) UIView *targetView;
@property(nonatomic, strong) UIView *mainView;
@property(nonatomic, strong) UIPickerView *pickerView;
@property(nonatomic, strong) OverlayView *overlayView;
@end

@implementation Picker

static const float PICKER_ACCESSORY_HEIGHT = 44;
static const float PICKER_HEIGHT = 216;

- (id) initWithView:(UIView *)targetView
{
    if (self = [super init]) {
        self.targetView = targetView;
        [self buildPickerView];
    }
    return self;
}

#pragma mark - UIPickerViewDataSource, UIPickerViewDelegate

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.delegate pickerView:pickerView numberOfRowsInComponent:component];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.delegate pickerView:pickerView titleForRow:row forComponent:component];
}

#pragma mark -

- (void)buildPickerView
{
    // キャンセル用ビューの作成
    self.overlayView = [[OverlayView alloc] initWithFrame:CGRectZero];
    self.overlayView.target = self;
    self.overlayView.action = @selector(hideView);
    self.overlayView.backgroundColor = [UIColor blackColor];
    self.overlayView.alpha = 0.4;
    [self.targetView addSubview:self.overlayView];
    
    float height = self.targetView.bounds.size.height;
    float width = self.targetView.bounds.size.width;
    
    // アクセサリビューとピッカービューを乗せるビューの作成
    float viewHeight = PICKER_ACCESSORY_HEIGHT + PICKER_HEIGHT;
    self.mainView = [[UIView alloc] initWithFrame:CGRectMake(0,
                                                             height,
                                                             width,
                                                             viewHeight)];
    [self.targetView addSubview:self.mainView];
    
    // アクセサリビュー作成
    UIView *pickerAccessoryView =
    [[UIView alloc] initWithFrame:CGRectMake(0,
                                             0,
                                             width,
                                             PICKER_ACCESSORY_HEIGHT)];
    pickerAccessoryView.backgroundColor = [UIColor whiteColor];
    
    const float DONE_BUTTON_WEDTH = 80;
    UIButton *doneBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    doneBtn.frame = CGRectMake(width - DONE_BUTTON_WEDTH,
                               4,
                               DONE_BUTTON_WEDTH,
                               36);
    [doneBtn setTitle:@"完了" forState:UIControlStateNormal];
    doneBtn.tintColor = [UIColor blueColor];
    [doneBtn addTarget:self
                action:@selector(performDoneButtonAction)
      forControlEvents:UIControlEventTouchUpInside];
    [pickerAccessoryView addSubview:doneBtn];
    [self.mainView addSubview:pickerAccessoryView];
    
    // ピッカー作成
    self.pickerView =
    [[UIPickerView alloc] initWithFrame:CGRectMake(0,
                                                   PICKER_ACCESSORY_HEIGHT,
                                                   width,
                                                   PICKER_HEIGHT)];
    self.pickerView.backgroundColor = [UIColor whiteColor];
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
    
    [self.mainView addSubview:self.pickerView];
}

- (void)setSelectRow:(NSInteger)row
{
    [self.pickerView selectRow:row inComponent:0 animated:NO]; // 初期値設定
}

- (void)showView
{
    self.mainView.hidden = NO;
    [self.targetView bringSubviewToFront:_overlayView]; // 最前面に移動
    [self.targetView bringSubviewToFront:_mainView]; // 最前面に移動
    self.overlayView.frame = [[UIScreen mainScreen] bounds];
    [UIView animateWithDuration:.20 animations:^{
        self.mainView.transform = CGAffineTransformMakeTranslation(0, -(PICKER_ACCESSORY_HEIGHT + PICKER_HEIGHT));
    }];
}

- (void)hideView
{
    [UIView animateWithDuration:.20 animations:^{
        self.mainView.transform = CGAffineTransformIdentity;
        self.mainView.hidden = YES;
    }];
    self.overlayView.frame = CGRectZero;
}

- (void)performDoneButtonAction
{
    NSInteger row = [self.pickerView selectedRowInComponent:0];
    
    [self hideView];
    
    if ([self.delegate respondsToSelector:@selector(selectedPicker:)]) {
        [self.delegate selectedPicker:row];
    }
}

- (void)reload
{
    [self.pickerView reloadAllComponents];
}
@end
