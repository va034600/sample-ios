//
//  SampleTableViewController.m
//  RefreshControlSample
//
//  Created by eu on 2015/03/30.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "SampleTableViewController.h"

@interface SampleTableViewController (){
    NSArray *array;
}

@end

@implementation SampleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    array = [[NSArray alloc] initWithObjects:@"aaa", @"bbb", @"ccc", nil];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];

    
    
    UIRefreshControl* refreshControl = [[UIRefreshControl alloc] init];
    [refreshControl addTarget:self
                       action:@selector(refresh:)
             forControlEvents:UIControlEventValueChanged];
    [refreshControl setTintColor:[UIColor blueColor]];
    
    self.refreshControl = refreshControl;
}

- (void)refresh:(id)sender
{
    NSLog(@"更新");
    [self.refreshControl endRefreshing];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [array objectAtIndex: indexPath.row];
    
    return cell;
}

@end
