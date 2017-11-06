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
    _textfield.autocorrectionType = UITextAutocorrectionTypeNo;
    
    if (_textfield.tag == EContact) {
        _textfield.keyboardType = UIKeyboardTypeNumberPad;
        [self setNumberPadWithDoneBtn];
    }
}

- (void)setNumberPadWithDoneBtn {
    UIToolbar* numberToolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, self.bounds.size.width,40)];
    numberToolbar.barStyle = UIStatusBarStyleDefault;
    
    numberToolbar.items = @[ [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil],[[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStylePlain target:self action:@selector(cancelNumberPad)]];
    
    _textfield.inputAccessoryView = numberToolbar;
}

- (void)cancelNumberPad {
    [_textfield resignFirstResponder];
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
