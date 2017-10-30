//
//  Animation.h
//  Utilities
//
//  Created by Danish Khan on 30/10/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Animation : NSObject

+ (void)scrollCellUpTextfield:(UITextField*)textfield ofTable:(UITableView*)tableview;
+ (void)scrollCellDownTextfield:(UITextField*)textfield ofTable:(UITableView*)tableview;

@end
