//
//  DashboardCollectionCell.m
//  Utilities
//
//  Created by Danish Khan on 06/11/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import "DashboardCollectionCell.h"
#import "UIColor+UIColor_ThemeColor.h"

@implementation DashboardCollectionCell {
    
    __weak IBOutlet UILabel* _gridLabel;
}

- (void)setGridUIAtIndex:(NSIndexPath*)indexpath {
    UIColor* gridColor = [self getGridColorAtIndex:indexpath.row];
    [self setBackgroundColor: gridColor];
}

- (UIColor*)getGridColorAtIndex:(NSInteger)index{
    UIColor* gridColor;
    switch (index) {
        case EGrid1Color: {
            gridColor = [UIColor grid1Color];
            break;
        }
        case EGrid2Color: {
            gridColor = [UIColor grid2Color];
            break;
        }
        case EGrid3Color: {
            gridColor = [UIColor grid3Color];
            break;
        }
        case EGrid4Color: {
            gridColor = [UIColor grid4Color];
            break;
        }
        default: {
            break;
        }
    }
    return gridColor;
}
@end
