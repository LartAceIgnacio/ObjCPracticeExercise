//
//  Magician.m
//  try_2
//
//  Created by Ace Ignacio on 1/24/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Magician.h"


@implementation Magician : Hero

-(void)Move:(Character *)c
{
    if([self isSleep:self])
        return;
    
    int randMove = arc4random() % 100;
    if(randMove >= 50) {
        [self MagicAttack:c];
    }
    else if(randMove < 50) {
        [self Attack:c];
    }
}

-(void)MagicAttack:(Character *)c2
{
    int randValue = arc4random() % 100;
    if(randValue > 70) {
        [self CastFireBolt:c2];
    }
    else if(randValue <= 70 && randValue > 40) {
        [self CastSoulStrike:c2];
    }
    else if(randValue <= 40 && randValue > 10) {
        [self CastEnergyCoat];
    }
    else {
        [self CastSleep:c2];
    }
}

-(void)CastSleep:(Character *)c2
{
    NSLog(@"%@ cast sleep at %@",self.name,c2.name);
    sleep(3);
    int randChance = arc4random() % 100;
    int randSleeptimes = arc4random() & 3;
    if(randChance >= 65 && randSleeptimes > 0) {
        NSLog(@"%@ has been slept.",c2.name);
        c2.sleepStatus++;
    }
    else {
        NSLog(@"Sleep failed.");
    }
}

-(void)CastFireBolt:(Character *)c
{
    int dmg;
    
    NSLog(@"%@ cast [FIRE BOLT] to %@",self.name,c.name);
    sleep(3);
    dmg = [self getMagicDamage:c];
    
    if(c.health - dmg < 0)
        c.health = 0;
    else
        c.health -= dmg;
    
    NSLog(@"%@(%d) attacks %@(%d) :%d damage is conflicted.",self.name,self.health,c.name,c.health,dmg);

}

-(void) CastSoulStrike:(Character *)e
{
    int dmg;
    
    NSLog(@"%@ cast [SOULT STRIKE] spell to %@",self.name,e.name);
    sleep(3);
    dmg = [self getMagicDamage:e];
    
    if(e.health - dmg < 0)
        e.health = 0;
    else
        e.health -= dmg;
    
    NSLog(@"%@(%d) attacks %@(%d) :%d damage is conflicted.",self.name,self.health,e.name,e.health,dmg);

}

-(void)CastEnergyCoat
{
    NSLog(@"%@ cast [Energy Coat] spell to himself",self.name);
    self.defense += 5;
    self.defense += 5;
}

@end
