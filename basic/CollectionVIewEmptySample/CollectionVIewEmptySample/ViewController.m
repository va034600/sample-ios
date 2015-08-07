//
//  ViewController.m
//  CollectionVIewEmptySample
//
//  Created by eu on 2015/08/07.
//
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *array;
    BOOL noneFlag;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    array = [[NSArray alloc] initWithObjects:@"aaa", @"bbb", @"ccc", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UICollectionViewDelegate

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if(noneFlag){
        return 1;
    }else{
        return [array count];
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    if(noneFlag){
        UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"NoneCell" forIndexPath:indexPath];
        return cell;
    }else{
        UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CustomCell" forIndexPath:indexPath];
        return cell;
    }
}

- (IBAction)kirikaeAction:(id)sender {
    noneFlag = !noneFlag;
    [self.collectionView reloadData];
}

@end
