//
//  Monster.h
//  try_2
//
//  Created by Ace Ignacio on 1/23/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "Hero.h"

@interface Monster : Character
{
    
}

//-(void)Move:(Character *)c1 Enemy:(Character *)c2;

//Monsert skills
-(void)ImproveDefense;
-(void)SelfRegenerate;
-(void)LeechLife:(Character *)c2;


@end
