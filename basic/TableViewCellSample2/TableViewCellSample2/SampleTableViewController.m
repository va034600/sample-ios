//
//  SampleTableViewController.m
//  TableViewCellSample2
//
//  Created by eu on 2015/03/30.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "SampleTableViewController.h"
#import "SampleTableViewCell.h"

@interface SampleTableViewController ()

@end

@interface SampleTableViewController (){
    NSArray *array;
}

@end

@implementation SampleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    array = [[NSArray alloc] initWithObjects:@"aaa", @"bbb", @"ccc", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SampleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell" forIndexPath:indexPath];
    [cell setLabel2Value: [array objectAtIndex: indexPath.row]];
    return cell;
}

@end