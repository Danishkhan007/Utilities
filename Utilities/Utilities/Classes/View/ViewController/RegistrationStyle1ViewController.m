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

@interface RegistrationStyle1ViewController () <UITableViewDelegate> {
    __weak IBOutlet UITableView* _tableview;
    
    NSArray* _uiDetailsArray;
}

@end

@implementation RegistrationStyle1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _uiDetailsArray = [RegistrationViewModel getRegistrationUIDetails];
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

@end
