//
//  Character.m
//  try_2
//
//  Created by Ace Ignacio on 1/23/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Character.h"

@implementation Character

@synthesize health,max_Attack,min_attack,defense,name,sleepStatus;
@synthesize min_MAttack,max_MAttack,MagicDefense;

-(void)Move:(Character *)c
{
    
}

-(BOOL)isSleep:(Character *)c
{
    if(c.sleepStatus > 0) {
        NSLog(@"%@ is sleeping.",c.name);
        c.sleepStatus--;
        return YES;
    }
    return NO;
}


-(void)Attack:(Character *)c
{
    //check if both characters are alive
    if(self.health == 0 || c.health == 0)
        return;
    
    //Get the damage that will be inflicted
    int dmg = [self getDamage:c];
    if(c.health - dmg < 0)
        c.health = 0;
    else
        c.health -= dmg;
    
    //Display attack details
    NSLog(@"%@(%d) attacks %@(%d) :%d damage is conflicted.",self.name,self.health,c.name,c.health,dmg);
}

-(int)getDamage:(Character *)c
{
    int dmg;
    //Normal Attack
    dmg = ((arc4random()%self.max_Attack)+self.min_attack)-c.defense;
    
    //if dmg is lower or equal to 0 set to 1
    if(dmg <= 0)
        dmg = 1;

    return dmg;
}

-(void)MagicAttack:(Character *)c
{
    int dmg;
    
    NSLog(@"%@ cast a magic spell to %@",self.name,c.name);
    sleep(3);
    dmg = [self getMagicDamage:c];
    
    if(c.health - dmg < 0)
        c.health = 0;
    else
        c.health -= dmg;
    
    NSLog(@"%@(%d) attacks %@(%d) :%d damage is conflicted.",self.name,self.health,c.name,c.health,dmg);
}


-(int)getMagicDamage:(Character *)c
{
    int dmg = ((arc4random()%self.max_MAttack)+self.min_MAttack)-c.MagicDefense;
    if(dmg <= 0)
        dmg = 1;
    return  dmg;
}

@end
