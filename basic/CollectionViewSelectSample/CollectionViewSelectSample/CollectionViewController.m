//
//  CollectionViewController.m
//  CollectionViewSelectSample
//
//  Created by eu on 2015/06/20.
//  Copyright (c) 2015年 va034600. All rights reserved.
//

#import "CollectionViewController.h"

@interface CollectionViewController (){
    NSArray *array;
}

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell1";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //複数選択
    self.collectionView.allowsMultipleSelection = YES;

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

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell;
    
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor whiteColor];
    
    UIView* selectedBackgroundView = [[UIView alloc] initWithFrame:cell.bounds];
    selectedBackgroundView.backgroundColor = [UIColor yellowColor];
    cell.selectedBackgroundView = selectedBackgroundView;
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    cell.backgroundColor = [UIColor yellowColor];
}

-(void)collectionView:(UICollectionView *)collectionView didUnhighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
}

@end
