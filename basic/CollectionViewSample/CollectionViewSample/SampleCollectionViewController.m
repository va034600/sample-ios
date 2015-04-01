//
//  SampleCollectionViewController.m
//  CollectionViewSample
//
//  Created by eu on 2015/03/13.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "SampleCollectionViewController.h"

@interface SampleCollectionViewController (){
    NSArray *array;
}

@end

@implementation SampleCollectionViewController

static NSString * const reuseIdentifier = @"Cell1";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    array = [[NSArray alloc] initWithObjects:@"aaa", @"bbb", @"ccc", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return array.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    return cell;
}

@end
