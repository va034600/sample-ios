//
//  SampleTableViewCell.h
//  TableViewCellSample
//
//  Created by eu on 2015/03/23.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SampleTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label2;
-(void)setLabel2Value:(NSString *)value;
@end
