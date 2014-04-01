//
//  SACharacter.h
//  Pirates
//
//  Created by Sachin Ahuja on 3/7/14.
//  Copyright (c) 2014 Sachin Ahuja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SAWeapons.h"
#import "SAArmor.h"

@interface SACharacter : NSObject

@property (nonatomic) int health;
@property (nonatomic) int damage;
@property (strong, nonatomic) SAArmor *armorWorn;
@property (strong, nonatomic) SAWeapons *weaponSelected;


@end
