//
//  TextWithLabelCell.h
//  Utilities
//
//  Created by Danish Khan on 27/10/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TextWithLabelCell;
@protocol TextfieldDelegate <NSObject>

@optional
- (void)didSelectTextField:(UITextField*)textfield;

@end

@interface TextWithLabelCell : UITableViewCell
    
typedef enum NSInteger {
    EFirstName = 101,
    ELastName,
    EGender,
    EContact,
    EAddress1,
    EAddress2,
    ECountry,
    EState,
    ECity,
    EPincode,
    EUserName,
    EPassword,
}ECellType;
        
@property (nonatomic, assign)id <TextfieldDelegate> delegate;

- (void)setTextLabelWithDic:(NSDictionary*)dictionary;

@end
