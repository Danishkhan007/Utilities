//
//  IndexViewController.m
//  Utilities
//
//  Created by Danish Khan on 29/10/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import "IndexViewController.h"

@interface IndexViewController ()

@end

@implementation IndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//To launch registration screen.
- (IBAction)registrationBtnPressed:(id)sender {
    
    [self performSegueWithIdentifier:@"ShowRegistration" sender:nil];
}

- (IBAction)loginBtnPressed:(id)sender {
    [self performSegueWithIdentifier:@"ShowLogin" sender:nil];
}




@end
