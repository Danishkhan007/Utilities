//
//  RegistrationStyle1ViewController.m
//  Utilities
//
//  Created by Danish Khan on 27/10/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import "RegistrationStyle1ViewController.h"
#import "RegistrationViewModel.h"
#import "TextWithLabelCell.h"
#import "Animation.h"

@interface RegistrationStyle1ViewController () <UITableViewDelegate, TextfieldDelegate> {
    __weak IBOutlet UITableView* _tableview;
    __weak UITextField* _currentTextField;
    
    NSArray* _uiDetailsArray;
}

@end

@implementation RegistrationStyle1ViewController

#pragma mark: View Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    _uiDetailsArray = [RegistrationViewModel getRegistrationUIDetails];
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardShown:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardHidden:) name:UIKeyboardDidHideNotification object:nil];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark: Tableview Data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _uiDetailsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TextWithLabelCell* cell = [_tableview dequeueReusableCellWithIdentifier:@"TextLabelCell"];
    [cell setTextLabelWithDic:_uiDetailsArray[indexPath.row]];
    return cell;
}

#pragma mark:Keyboard notifier
- (void)keyboardShown:(NSNotification*)notification {
    [Animation scrollCellUpTextfield:_currentTextField ofTable:_tableview];
}

- (void)keyboardHidden:(NSNotification*)notification {
    [Animation scrollCellDownTextfield:_currentTextField ofTable:_tableview];
}

#pragma mark:Custom textfield delgate
- (void)didSelectTextField:(UITextField *)textfield {
    _currentTextField = textfield;
}

@end
