//
//  RegistrationManager.m
//  Utilities
//
//  Created by Danish Khan on 29/10/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import "RegistrationViewModel.h"
#import "DataManager.h"

@implementation RegistrationViewModel

//To fetch display data from json file. 
+ (NSArray*)getRegistrationJson {
  return  [DataManager getArrayforJsonName:@"registration"];
}

@end
