//
//  Picker.h
//  PickerSample2
//
//  Created by eu on 2015/07/20.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PickerDelegate <NSObject>
- (void)selectedPicker:(NSInteger)row;
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
@end

@interface Picker : NSObject
@property (nonatomic, assign) id<PickerDelegate> delegate;
- (id) initWithView:(UIView *)targetView;
- (void)setSelectRow:(NSInteger)row;
- (void)showView;
- (void)reload;
@end