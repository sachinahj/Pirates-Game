//
//  SAViewController.h
//  Pirates
//
//  Created by Sachin Ahuja on 3/5/14.
//  Copyright (c) 2014 Sachin Ahuja. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SACharacter.h"
#import "SATile.h"
#import "SABoss.h"

@interface SAViewController : UIViewController
//RESET Button
- (IBAction)resetButton:(UIButton *)sender;

//pirate location on board
@property (nonatomic) CGPoint charLocation;
@property (nonatomic) int xLoc;
@property (nonatomic) int yLoc;
@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) SACharacter *pirate;
@property (strong, nonatomic) SABoss *boss;
@property (strong, nonatomic) SATile *currentTile;

//Story, Background Image and Action Button Name
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (strong, nonatomic) IBOutlet UIButton *actionButtonDisplay;
- (IBAction)actionButton:(UIButton *)sender;


//Health, Damage, Weapon, and Armor
@property (strong, nonatomic) IBOutlet UILabel *healthStatus;
@property (strong, nonatomic) IBOutlet UILabel *damageStatus;
@property (strong, nonatomic) IBOutlet UILabel *weaponSelected;
@property (strong, nonatomic) IBOutlet UILabel *armorSelected;


//cardinal direction buttons actions
- (IBAction)buttonN:(UIButton *)sender;
- (IBAction)buttonE:(UIButton *)sender;
- (IBAction)buttonS:(UIButton *)sender;
- (IBAction)buttonW:(UIButton *)sender;
//cardinal direction buttons displays
@property (strong, nonatomic) IBOutlet UIButton *buttonViewN;
@property (strong, nonatomic) IBOutlet UIButton *buttonViewE;
@property (strong, nonatomic) IBOutlet UIButton *buttonViewS;
@property (strong, nonatomic) IBOutlet UIButton *buttonViewW;
//cardinal direction buttons check
- (void)buttonCheck;


@end
