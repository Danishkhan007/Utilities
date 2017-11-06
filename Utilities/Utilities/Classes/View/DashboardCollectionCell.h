//
//  DashboardCollectionCell.h
//  Utilities
//
//  Created by Danish Khan on 06/11/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashboardCollectionCell : UICollectionViewCell

typedef enum NSInteger {
    EGrid1Color = 0,
    EGrid2Color,
    EGrid3Color,
    EGrid4Color
} EGridColor;

- (void)setGridUIAtIndex:(NSIndexPath*)indexpath;

@end
