//
//  Magician.h
//  try_2
//
//  Created by Ace Ignacio on 1/24/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hero.h"

@interface Magician : Hero
{
    
}

-(void)MagicAttack:(Character *)c2;

-(void)CastSleep:(Character *)c2;
-(void)CastFireBolt:(Character *)c2;
-(void)CastSoulStrike:(Character *)e;
-(void)CastEnergyCoat;
@end
