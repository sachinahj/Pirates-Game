//
//  SATile.h
//  Pirates
//
//  Created by Sachin Ahuja on 3/6/14.
//  Copyright (c) 2014 Sachin Ahuja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SAWeapons.h"
#import "SAArmor.h"

@interface SATile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) NSString *actionButtonPressed;
@property (strong, nonatomic) SAWeapons *weapon;
@property (strong ,nonatomic) SAArmor *armor;
@property (nonatomic) int healthEffect;
@property (nonatomic) BOOL actionButtonPressedYet;
@end
