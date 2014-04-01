//
//  SAFactory.m
//  Pirates
//
//  Created by Sachin Ahuja on 3/6/14.
//  Copyright (c) 2014 Sachin Ahuja. All rights reserved.
//

#import "SAFactory.h"
#import "SATile.h"


@implementation SAFactory

-(NSArray *)tiles
{
    SATile *tile1 = [[SATile alloc] init];
    tile1.story = @"Ahoy matey! Looks like our old captain was buried with the sea. You’re our new captain now; lead us in a life of freedom, plunder and booty. Would you like to take this blunted sword as your weapon?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    tile1.actionButtonName = [NSString stringWithFormat:@"Take Weapon"];
    tile1.actionButtonPressed = [NSString stringWithFormat:@"Weapon Taken"];
    tile1.actionButtonPressedYet = YES;
    SAWeapons *bluntedSword = [[SAWeapons alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 15;
    tile1.weapon = bluntedSword;
    
    
    SATile *tile2 = [[SATile alloc] init];
    tile2.story = @"One of the crewmembers stumbled upon a treasure map, would you like to go treasure hunting?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile2.actionButtonName = [NSString stringWithFormat:@"Go Treasure Hunting"];
    tile2.actionButtonPressed = [NSString stringWithFormat:@"Treasure Found!"];
    tile2.actionButtonPressedYet = YES;
    tile2.healthEffect = 20;
    
    
    SATile *tile3 = [[SATile alloc] init];
    tile3.story = @"A good pirate can use a variety of weapons. Take these pistols as weapons.";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    tile3.actionButtonName = [NSString stringWithFormat:@"Take Pistols"];
    tile3.actionButtonPressed = [NSString stringWithFormat:@"Pistols Equipped"];
    tile3.actionButtonPressedYet = YES;
    SAWeapons *pistols = [[SAWeapons alloc] init];
    pistols.name = @"Dual Pistols";
    pistols.damage = 30;
    tile3.weapon = pistols;

    SATile *tile4 = [[SATile alloc] init];
    tile4.story = @"You find a stray parrot, would you like to adopt him. He will be your most loyal friend during your journey.";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    tile4.actionButtonName = [NSString stringWithFormat:@"Adopt Parrot"];
    tile4.actionButtonPressed = [NSString stringWithFormat:@"Parrot Adopted"];
    tile4.actionButtonPressedYet = YES;
    tile4.healthEffect = 10;

    SATile *tile5 = [[SATile alloc] init];
    tile5.story = @"Look who’s in town! It’s Mr. Henway, the best blacksmith in town. He owes you one. Would you like him to make you a steel armor?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    tile5.actionButtonName = [NSString stringWithFormat:@"Request Armor"];
    tile5.actionButtonPressed = [NSString stringWithFormat:@"Armor Acquired"];
    tile5.actionButtonPressedYet = YES;
    SAArmor *steelArmor = [[SAArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 50;
    tile5.armor = steelArmor;

    SATile *tile6 = [[SATile alloc] init];
    tile6.story = @"Bandits have captured you in the night. They are debating either killing you or making you walk the plank.";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.actionButtonName = [NSString stringWithFormat:@"Show No Fear"];
    tile6.actionButtonPressed = [NSString stringWithFormat:@"Plank Walked"];
    tile6.actionButtonPressedYet = YES;
    tile6.healthEffect = -25;

    SATile *tile7 = [[SATile alloc] init];
    tile7.story = @"The Kraken has attacked. All hands to deck! Lets kill this beast so no one has to suffer again.";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile7.actionButtonName = [NSString stringWithFormat:@"Kill Kraken"];
    tile7.actionButtonPressed = [NSString stringWithFormat:@"Kraken Killed"];
    tile7.actionButtonPressedYet = YES;
    tile7.healthEffect = -40;

    SATile *tile8 = [[SATile alloc] init];
    tile8.story = @"A fog sets. In the distance you spot the ghost ship of the famous pirate, Blackbeard! He sets sails towards your beloved ship. It’s time to fight!";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile8.actionButtonName = [NSString stringWithFormat:@"Fight Boss"];
    tile8.actionButtonPressed = [NSString stringWithFormat:@"Boss Killed"];
    tile8.actionButtonPressedYet = YES;
    tile8.healthEffect = -30;

    SATile *tile9 = [[SATile alloc] init];
    tile9.story = @"There’s a convoy of Spaniard ships attacking a pirate mate of yours. Do you want to intervene or sail away?";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile9.actionButtonName = [NSString stringWithFormat:@"Help Pirates"];
    tile9.actionButtonPressed = [NSString stringWithFormat:@"Killed Spaniards"];
    tile9.actionButtonPressedYet = YES;
    tile9.healthEffect = -10;


    SATile *tile10 = [[SATile alloc] init];
    tile10.story = @"You spot a dock in the distance. Do you want to stop?";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile10.actionButtonName = [NSString stringWithFormat:@"Stop at Dock"];
    tile10.actionButtonPressed = [NSString stringWithFormat:@"Got Supplies"];
    tile10.actionButtonPressedYet = YES;
    tile10.healthEffect = 30;
    

    SATile *tile11 = [[SATile alloc] init];
    tile11.story = @"Bandits attack your ship! Fend em off!";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile11.actionButtonName = [NSString stringWithFormat:@"Fend Of Bandits"];
    tile11.actionButtonPressed = [NSString stringWithFormat:@"Bandits Evaded"];
    tile11.actionButtonPressedYet = YES;
    tile11.healthEffect = -15;
    

    SATile *tile12 = [[SATile alloc] init];
    tile12.story = @"You spot a shiny object at the bottom of the sea. It looks like treasure. Would you like to swim down and check it out?";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile12.actionButtonName = [NSString stringWithFormat:@"Swim Deeper"];
    tile12.actionButtonPressed = [NSString stringWithFormat:@"Armor Found"];
    tile12.actionButtonPressedYet = YES;
    SAArmor *goldenArmor = [[SAArmor alloc] init];
    goldenArmor.name = @"Golden Armor";
    goldenArmor.health = 100;
    tile12.armor = goldenArmor;

    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

-(SACharacter *)character;
{
    SACharacter *character = [[SACharacter alloc] init];
    character.health = 100;
    character.damage = 10;
    
    SAArmor *armor = [[SAArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 0;
    
    SAWeapons *weapon = [[SAWeapons alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    
    
    character.weaponSelected = weapon;
    character.armorWorn = armor;
    
    return character;
}

-(SABoss *)boss
{
    SABoss *boss = [[SABoss alloc] init];
    boss.health = 65;
    return boss;
}

@end
