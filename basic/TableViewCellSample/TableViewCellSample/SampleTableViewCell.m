//
//  SampleTableViewCell.m
//  TableViewCellSample
//
//  Created by eu on 2015/03/23.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "SampleTableViewCell.h"

@implementation SampleTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setLabel2Value:(NSString *)value
{
    self.label2.text = value;
}

@end
