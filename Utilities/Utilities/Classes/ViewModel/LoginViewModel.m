//
//  LoginViewModel.m
//  Utilities
//
//  Created by Danish Khan on 02/11/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import "LoginViewModel.h"
#import "DataManager.h"

@implementation LoginViewModel

+ (NSArray*)getLoginJson {
    return  [DataManager getArrayforJsonName:@"login"];
}
@end
