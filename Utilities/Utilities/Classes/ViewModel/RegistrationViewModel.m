//
//  RegistrationManager.m
//  Utilities
//
//  Created by Danish Khan on 29/10/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import "RegistrationViewModel.h"

@implementation RegistrationViewModel

//To fetch display data from json file. 
+ (NSArray*)getRegistrationUIDetails {
    NSArray* itemsArray;
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"Registration" ofType:@"json"];
    NSData* fileData = [NSData dataWithContentsOfFile:filePath];
    
    if (fileData) {
        NSDictionary* jsonObj = [NSJSONSerialization
                                 JSONObjectWithData:fileData options:kNilOptions error:nil];
        itemsArray = jsonObj[@"registration"];
    }
    return itemsArray;
}

@end