//
//  ViewController.m
//  CollectionViewPageSample
//
//  Created by eu on 2015/11/11.
//  Copyright © 2015年 eu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    //ページング
    self.collectionView.pagingEnabled = YES;
    [self.collectionView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 3;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell1" forIndexPath:indexPath];
    
    UIImageView *imageView = (UIImageView*)[cell viewWithTag:1];
    NSString *imageName = [NSString stringWithFormat:@"2100x2800_00%zd", (indexPath.row + 1)];
    [imageView setContentMode:UIViewContentModeScaleToFill];
    [imageView setImage:[UIImage imageNamed:imageName]];
    
    return cell;
}

@end
