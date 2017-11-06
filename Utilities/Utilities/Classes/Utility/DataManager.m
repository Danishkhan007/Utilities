//
//  FileAccessManager.m
//  Utilities
//
//  Created by Danish Khan on 02/11/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import "DataManager.h"

@implementation DataManager

    //To fetch display data from json file.
+ (NSArray*)getArrayforJsonName:(NSString*)jsonName {
    NSArray* itemsArray;
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"Custom" ofType:@"json"];
    NSData* fileData = [NSData dataWithContentsOfFile:filePath];
    
    if (fileData) {
        NSDictionary* jsonObj = [NSJSONSerialization
                                 JSONObjectWithData:fileData options:kNilOptions error:nil];
        itemsArray = jsonObj[jsonName];
    }
    return itemsArray;
}
    
@end
