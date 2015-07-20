//
//  ViewController.m
//  PickerSample2
//
//  Created by eu on 2015/07/20.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "ViewController.h"
#import "Picker.h"

@interface ViewController ()<PickerDelegate>
@property (nonatomic) Picker *picker;
@property (nonatomic) NSArray *list;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.picker =  [[Picker alloc] initWithView:self.view];
    self.picker.delegate = self;
    
    self.list = @[@"value1", @"value2", @"value3"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark PickerDelegate

- (void)selectedPicker:(NSInteger)row
{
    NSString *name = self.list[row];
    NSLog(@"%@", name);
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.list count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return self.list[row];
}

#pragma mark event

- (IBAction)buttonTouchUpInside:(id)sender {
    [self.picker showView];
}

@end
