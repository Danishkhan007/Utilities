//
//  RegistrationModel.h
//  Utilities
//
//  Created by Danish Khan on 29/10/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RegistrationModel : NSObject

@property (nonatomic, strong)NSString* firstName;
@property (nonatomic, strong)NSString* lastName;
@property (nonatomic, strong)NSString* gender;
@property (nonatomic, strong)NSString* address1;
@property (nonatomic, strong)NSString* address2;
@property (nonatomic, strong)NSString* city;
@property (nonatomic, strong)NSString* state;
@property (nonatomic, strong)NSString* country;
@property (nonatomic, strong)NSString* zipcode;
@property (nonatomic, strong)NSString* contact;
@property (nonatomic, strong)NSString* emailAddress;

#pragma mark: methods

- (RegistrationModel*)initWithDictionary:(NSDictionary *)dic;

- (NSDictionary*)getRegistrationDicFromModel:(RegistrationModel*)regModel;

@end
