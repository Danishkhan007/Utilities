//
//  DashboardViewController.m
//  Utilities
//
//  Created by Danish Khan on 06/11/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import "DashboardViewController.h"
#import "DashboardCollectionCell.h"

@interface DashboardViewController () <UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView* _collectionView;

@end

@implementation DashboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    DashboardCollectionCell* collectionCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"DashboardCollectionCell" forIndexPath:indexPath ];
    [collectionCell setGridUIAtIndex:indexPath];
    return collectionCell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 100;
}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGFloat height = self.view.frame.size.height;
    CGFloat width  = self.view.frame.size.width;
    // in case you you want the cell to be 48% of your controllers view
    return CGSizeMake(width*0.48,height*0.48);
}

@end
