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
    _textfield.tag = [[dictionary objectForKey:@"index"] intValue];
    
    UIColor* placeHolderColor = (_textfield.tag == EUserName || _textfield.tag == EPassword) ? [UIColor whiteColor] : [UIColor lightGrayColor];
    
    _textfield.attributedPlaceholder = [[NSAttributedString alloc] initWithString:[dictionary objectForKey:@"placeholder"] attributes:@{NSForegroundColorAttributeName:placeHolderColor }];

    _textfield.secureTextEntry = (_textfield.tag == EPassword) ? YES : NO;
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
