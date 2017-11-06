//
//  LoginViewController.m
//  Utilities
//
//  Created by Danish Khan on 01/11/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginViewModel.h"
#import "TextWithLabelCell.h"
#import "Animation.h"

@interface LoginViewController () <UITableViewDelegate, TextfieldDelegate> {
    __weak IBOutlet UITableView* _tableview;
    
    UITextField* _currentTextField;
    NSArray* _uiDetailsArray;
}
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _uiDetailsArray =  [LoginViewModel getLoginJson];
    
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
    TextWithLabelCell* cell = [_tableview dequeueReusableCellWithIdentifier:@"LoginCell"];
    [cell setTextLabelWithDic:_uiDetailsArray[indexPath.row]];
    cell.delegate = self;
    return cell;
}
    
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
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
