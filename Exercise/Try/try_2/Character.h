//
//  Character.h
//  try_2
//
//  Created by Ace Ignacio on 1/23/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Character : NSObject
{
    int statusSleep;
    NSString *name;
    int health;
    int max_Attack;
    int min_Attack;
    int max_MAttack;
    int min_MAttack;
    int defense;
    int MagicDef;
}

@property int max_MAttack;
@property int min_MAttack;
@property int sleepStatus;
@property (strong)NSString *name;
@property int health;
@property int min_attack;
@property int max_Attack;
@property int defense;
@property int MagicDefense;

-(BOOL)isSleep:(Character *)c;

-(void)Move:(Character *)c;

-(void)Attack:(Character *)c;
-(int)getDamage:(Character *)c;
-(void)MagicAttack:(Character *)c;
-(int)getMagicDamage:(Character *)c;


@end
