//
//  TextWithLabelCell.h
//  Utilities
//
//  Created by Danish Khan on 27/10/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TextfieldDelegate <NSObject>

@optional
- (void)didSelectTextField:(UITextField*)textfield;

@end

@interface TextWithLabelCell : UITableViewCell

@property (nonatomic, assign)id <TextfieldDelegate> delegate;

- (void)setTextLabelWithDic:(NSDictionary*)dictionary;

@end
