//
//  SAFactory.h
//  Pirates
//
//  Created by Sachin Ahuja on 3/6/14.
//  Copyright (c) 2014 Sachin Ahuja. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SACharacter.h"
#import "SABoss.h"

@interface SAFactory : NSObject

-(NSArray *)tiles;
-(SACharacter *)character;
-(SABoss *)boss;


@end
