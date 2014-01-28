//
//  Hero.m
//  try_2
//
//  Created by Ace Ignacio on 1/23/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Hero.h"

@implementation Hero

-(void)Move:(Character *)c2
{
    if([self isSleep:self])
        return;
    int randMove = arc4random() % 100;
    if(randMove >= 70) {
        [self MagicAttack:c2];
    }
    else if(randMove < 70 && randMove >= 10) {
        [self Attack:c2];
    }
}






@end
