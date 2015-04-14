//
//  SampleTableViewController.m
//  TableViewControllerDeleteSample
//
//  Created by eu on 2015/04/14.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "SampleTableViewController.h"

@interface SampleTableViewController (){
    NSMutableArray *samples;
}

@end

@implementation SampleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //編集ボタン追加
    self.navigationItem.rightBarButtonItem = self.editButtonItem;

    samples = [[NSMutableArray alloc] initWithObjects:@"aaa", @"bbb", @"ccc", nil];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [samples count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [samples objectAtIndex: indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [samples removeObjectAtIndex:indexPath.row];
        [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}
@end
