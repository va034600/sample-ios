//
//  ViewController.m
//  TableViewSample
//
//  Created by eu on 2015/03/20.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>{
    NSArray *array;
}
@property (weak, nonatomic) IBOutlet UITableView *abcTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.abcTableView.dataSource = self;
    self.abcTableView.delegate = self;

    array = [[NSArray alloc] initWithObjects:@"aaa", @"bbb", @"ccc", nil];

    [self.abcTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [self.abcTableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [array objectAtIndex: indexPath.row];
    
    return cell;
}

@end
