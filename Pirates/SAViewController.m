//
//  SAViewController.m
//  Pirates
//
//  Created by Sachin Ahuja on 3/5/14.
//  Copyright (c) 2014 Sachin Ahuja. All rights reserved.
//

#import "SAViewController.h"
#import "SAFactory.h"
#import "SATile.h"
#import "SACharacter.h"


@interface SAViewController ()

@end

@implementation SAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Start prep
    self.xLoc = 0;
    self.yLoc = 0;
    self.charLocation = CGPointMake(self.xLoc,self.yLoc);
    SAFactory *factory = [[SAFactory alloc] init];
    self.tiles = [factory tiles];
    self.pirate = [factory character];
    self.boss = [factory boss];
    self.currentTile =[[self.tiles objectAtIndex:self.charLocation.x] objectAtIndex:self.charLocation.y];
    
    [self buttonCheck];
    [self updateView];
    [self updateCharacterForArmor:nil withWeapons:nil withHealthEffect:0];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - IB Actions
- (IBAction)buttonN:(UIButton *)sender {
    self.charLocation = CGPointMake(self.charLocation.x,self.charLocation.y + 1);
    [self buttonCheck];
    [self updateView];
}

- (IBAction)buttonE:(UIButton *)sender {
    self.charLocation = CGPointMake(self.charLocation.x + 1,self.charLocation.y);
    [self buttonCheck];
    [self updateView];
}

- (IBAction)buttonS:(UIButton *)sender {
    self.charLocation = CGPointMake(self.charLocation.x,self.charLocation.y - 1);
    [self buttonCheck];
    [self updateView];
}

- (IBAction)buttonW:(UIButton *)sender {
    self.charLocation = CGPointMake(self.charLocation.x - 1,self.charLocation.y);
    [self buttonCheck];
    [self updateView];
}
- (IBAction)resetButton:(UIButton *)sender {
    [self viewDidLoad];
}
- (IBAction)actionButton:(UIButton *)sender {
    self.currentTile =[[self.tiles objectAtIndex:self.charLocation.x] objectAtIndex:self.charLocation.y];
    self.currentTile.actionButtonPressedYet = NO;
    if (self.charLocation.x ==2 && self.charLocation.y == 1)
    {
        self.boss.health = self.boss.health - self.pirate.damage;
        if (self.boss.health <= 0)
        {
            self.currentTile.actionButtonPressedYet = NO;
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"You Won" message:@"You have defeated the boss!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
            [alertView show];
        }
        else
        {
            self.currentTile.actionButtonPressedYet = YES;
        }

    }
    [self updateCharacterForArmor:self.currentTile.armor withWeapons:self.currentTile.weapon withHealthEffect:self.currentTile.healthEffect];
    if (self.pirate.health <= 0)
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Dead" message:@"You have died! Please restart the game" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertView show];
    }
    
    [self updateView];
    
    
    
}
#pragma mark - Helper Methods
- (void)updateView{
    self.currentTile =[[self.tiles objectAtIndex:self.charLocation.x] objectAtIndex:self.charLocation.y];
    self.storyLabel.text = self.currentTile.story;
    self.backgroundImage.image = self.currentTile.backgroundImage;
    self.actionButtonDisplay.enabled = self.currentTile.actionButtonPressedYet;
    if (self.currentTile.actionButtonPressedYet == YES)
    {
        [self.actionButtonDisplay setTitle:self.currentTile.actionButtonName forState:normal];
    }
    else if (self.currentTile.actionButtonPressedYet == NO)
    {
        [self.actionButtonDisplay setTitle:self.currentTile.actionButtonPressed forState:normal];
    }
    self.healthStatus.text = [NSString stringWithFormat:@"%i", self.pirate.health];
    self.damageStatus.text = [NSString stringWithFormat:@"%i", self.pirate.damage];
    self.armorSelected.text = self.pirate.armorWorn.name;
    self.weaponSelected.text = self.pirate.weaponSelected.name;
}
- (void)buttonCheck{
    if (self.charLocation.y == 0){
        self.buttonViewS.hidden = YES;}
    else {
        self.buttonViewS.hidden = NO;}
    if (self.charLocation.y == 2){
        self.buttonViewN.hidden = YES;}
    else {
        self.buttonViewN.hidden = NO;}
    if (self.charLocation.x == 0){
        self.buttonViewW.hidden = YES;}
    else {
        self.buttonViewW.hidden = NO;}
    if (self.charLocation.x == 3){
        self.buttonViewE.hidden = YES;}
    else {
        self.buttonViewE.hidden = NO;}
}
-(void)updateCharacterForArmor:(SAArmor *)armor withWeapons:(SAWeapons *)weapon withHealthEffect:(int)healthEffect
{
    if (armor != nil)
    {
        self.pirate.health = self.pirate.health - self.pirate.armorWorn.health + armor.health;
        self.pirate.armorWorn = armor;
    }
    else if (weapon != nil)
    {
        self.pirate.damage = self.pirate.damage - self.pirate.weaponSelected.damage + weapon.damage;
        self.pirate.weaponSelected = weapon;
    }
    else if (healthEffect != 0)
    {
        self.pirate.health = self.pirate.health + healthEffect;
    }
}

@end
