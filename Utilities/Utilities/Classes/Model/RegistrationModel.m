//
//  RegistrationModel.m
//  Utilities
//
//  Created by Danish Khan on 29/10/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import "RegistrationModel.h"

@implementation RegistrationModel

- (RegistrationModel*)initWithDictionary:(NSDictionary *)dic {
    if (self.init) {
        self.firstName = [dic objectForKey:@"firstName"];
    }
    return self;
}

- (NSDictionary*)getRegistrationDicFromModel:(RegistrationModel*)regModel {
    NSMutableDictionary* regDic = [NSMutableDictionary dictionary];
    [regDic  setObject:regModel.firstName forKey:@"firstName"];
    [regDic  setObject:regModel.lastName forKey:@"lastName"];
    [regDic  setObject:regModel.gender forKey:@"gender"];
    [regDic  setObject:regModel.address1 forKey:@"address1"];
    [regDic  setObject:regModel.address2 forKey:@"address2"];
    [regDic  setObject:regModel.city forKey:@"city"];
    [regDic  setObject:regModel.state forKey:@"state"];
    [regDic  setObject:regModel.country forKey:@"country"];
    [regDic  setObject:regModel.contact forKey:@"contact"];
    [regDic  setObject:regModel.emailAddress forKey:@"emailAddress"];
    [regDic  setObject:regModel.zipcode forKey:@"zipcode"];

    NSDictionary* dictionary = [[NSDictionary alloc] initWithDictionary:regDic];
    return dictionary;
}

@end
