//
//  TextWithLabelCell.m
//  Utilities
//
//  Created by Danish Khan on 27/10/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import "TextWithLabelCell.h"

@interface TextWithLabelCell ()<UITextFieldDelegate> {
    
    __weak IBOutlet UITextField* _textfield;
    __weak IBOutlet UILabel* _label;
}
@end

@implementation TextWithLabelCell

- (void)setTextLabelWithDic:(NSDictionary*)dictionary {
    _label.text = [dictionary objectForKey:@"label"];
    
    _textfield.attributedPlaceholder = [[NSAttributedString alloc] initWithString:[dictionary objectForKey:@"placeholder"] attributes:@{NSForegroundColorAttributeName:[UIColor lightGrayColor] }];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    //To set the current textfield.
    if ([self.delegate respondsToSelector:@selector(didSelectTextField:)]) {
        [self.delegate didSelectTextField:textField];
    }
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [_textfield resignFirstResponder];
    return YES;
}

@end
