//
//  OwnedAppliance.m
//  Appliances
//
//  Created by Ace Ignacio on 1/22/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "OwnedAppliance.h"

@implementation OwnedAppliance

@synthesize ownersName;

-(id)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n
{
    self = [self initWithProductName:pn];
    if(self) {
        ownersName = [[NSMutableSet alloc]init];
        if(n) {
            [ownersNames addObject:n];
        }
    }
    return self;
}

-(void) addOwnersNameObject:(NSString *)n
{
    [ownersNames addObject:n];
}

-(void) removeOwnersNameObject:(NSString *)n
{
    [ownersNames removeObject:n];
}

-(id) initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn firstOwnerName:nil];
}
@end
