//
//  Game.m
//  try_2
//
//  Created by Ace Ignacio on 1/23/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Game.h"


@implementation Game

@synthesize isAlive;

-(void)newGame:(Character *)h character:(Character *)m
{
    if(isAlive == Nil)
        isAlive = YES;
    
    while(isAlive) {
        [h Move:m];
        isAlive = [self isAlive:h enemy:m];
        if(!isAlive)
            break;
        sleep(1);
        [m Move:h];
        isAlive = [self isAlive:h enemy:m];
        sleep(1);
    }
    
    Character *w = [[Character alloc]init];
    w = [self Winner:h enemy:m];
    NSLog(@"The winner is %@",w.name);
    
    Logger *l = [[Logger alloc]init];
    [l WriteLogs:[NSString stringWithFormat:@"The winner is %@",w.name]];
}

-(BOOL)isAlive:(Character *)c enemy:(Character *)e
{
    if(c.health <= 0 || e.health <= 0)
        return NO;
    return YES;
}

-(Character *)Winner:(Character *)c enemy:(Character *)e
{
    if(c.health > 0 && e.health <= 0)
        return c;
    else if(e.health > 0 && c.health <= 0)
        return e;
    return nil;
}
@end
