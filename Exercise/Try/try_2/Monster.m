//
//  Monster.m
//  try_2
//
//  Created by Ace Ignacio on 1/23/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Monster.h"

@implementation Monster

-(void)Move:(Character *)c2
{
    //check for poison etc.
    if([self isSleep:self])
        return;
    int randMove = arc4random() % 100;
    if(randMove >= 85) {
        [self SelfRegenerate];
    }
    else if(randMove >= 60 && randMove < 85) {
        [self ImproveDefense];
    }
    else if (randMove < 60 && randMove > 50) {
        [self LeechLife:c2];
    }
    else if (randMove <= 50) {
        [self Attack:c2];
    }
}



-(void)ImproveDefense
{
    int randValue = arc4random() % 10;
    if(randValue == 0)
        randValue = 1;
    self.defense += randValue;
    NSLog(@"%@ has increased his defense by %d, total defense:%d",self.name,randValue,self.defense);
}

-(void)SelfRegenerate
{
    int randValue = arc4random() % 50;
    if(randValue == 0)
        randValue = 1;
    self.health += randValue;
    NSLog(@"%@ has regenerate %d life",self.name,randValue);
}

-(void)LeechLife:(Character *)c2
{
    int randValue = arc4random() % 10;
    self.health += randValue;
    c2.health -= randValue;
    NSLog(@"%@ has stolen %d life from %@",self.name,randValue,c2.name);

}


-(int)getDamage:(Hero *)c2
{
    int dmg = ((arc4random()%self.max_Attack)+self.min_attack)-c2.defense;
    if(dmg <= 0)
        dmg = 1;
    return dmg;
}


@end
