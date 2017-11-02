//
//  LoginViewController.m
//  Utilities
//
//  Created by Danish Khan on 01/11/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController () {
    __weak IBOutlet UITextField* _usernameField;
    __weak IBOutlet UITextField* _passwordField;
}
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _usernameField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Enter User Name" attributes:@{NSForegroundColorAttributeName:[UIColor whiteColor] }];
    _passwordField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Enter Password" attributes:@{NSForegroundColorAttributeName:[UIColor whiteColor] }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
