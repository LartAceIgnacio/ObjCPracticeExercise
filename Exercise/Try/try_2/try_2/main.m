//
//  main.m
//  try_2
//
//  Created by Ace Ignacio on 1/23/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Magician.h"
#import "Monster.h"
#import "Game.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Character *h = [[Magician alloc]init];
        h.name = @"Lart";
        h.max_Attack = 20;
        h.min_attack = 10;
        h.health = 100;
        h.defense = 10;
        h.MagicDefense = 5;
        h.max_MAttack = 35;
        h.min_MAttack = 29;
        h.sleepStatus = 0;
        
        Character *m = [[Monster alloc]init];
        m.name = @"Fabre";
        m.max_Attack = 20;
        m.min_attack = 10;
        m.health = 100;
        m.defense = 11;
        m.MagicDefense = 20;
        m.sleepStatus = 0;
        
        
        Game *g = [[Game alloc]init];
        [g newGame:h character:m];

        
        [h release];
        [g release];
        
        
       // [h Attack:h.max_Attack MinAttack:h.min_attack opponentDefense:m.defense Name:h.name
     //opponentName:m.name];
        //[m Attack:m.max_Attack MinAttack:m.min_attack opponentDefense:h.defense];
    }
    return 0;
}

