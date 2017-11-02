//
//  Animation.m
//  Utilities
//
//  Created by Danish Khan on 30/10/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import "Animation.h"

@implementation Animation


//To scroll cell up
+ (void)scrollCellUpTextfield:(UITextField*)textfield ofTable:(UITableView*)tableview {
    CGPoint pointInTable = [textfield.superview convertPoint:textfield.frame.origin toView:tableview];
    CGPoint contentOffset = tableview.contentOffset;
    
    contentOffset.y = (pointInTable.y - textfield.inputAccessoryView.frame.size.height);
    [tableview setContentOffset:contentOffset animated:YES];
}

//To scroll cell down
+ (void)scrollCellDownTextfield:(UITextField*)textfield ofTable:(UITableView*)tableview {
    if ([textfield.superview.superview isKindOfClass:[UITableViewCell class]])
    {
        UITableViewCell *cell = (UITableViewCell*)textfield.superview.superview;
        NSIndexPath *indexPath = [tableview indexPathForCell:cell];
        
        [tableview scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionMiddle animated:TRUE];
    }
}

@end
