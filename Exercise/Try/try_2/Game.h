//
//  Game.h
//  try_2
//
//  Created by Ace Ignacio on 1/23/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "Hero.h"
#import "Monster.h"
#import "Logger.h"

@interface Game : NSObject
{
    BOOL isAlive;
}

@property BOOL isAlive;

-(void)newGame:(Character *)h
     character:(Character *)m;

-(BOOL)isAlive:(Character *)c
enemy:(Character *)e;

-(Character *)Winner:(Character *)c
             enemy:(Character *)e;

@end
