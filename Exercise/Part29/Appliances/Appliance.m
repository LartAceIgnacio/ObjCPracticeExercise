//
//  Appliance.m
//  Appliances
//
//  Created by Ace Ignacio on 1/22/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Appliance.h"

@implementation Appliance

@synthesize voltage, productName;

-(id) init
{
    return [self initWithProductName:@"Unknown"];
}

-(id)initWithProductName:(NSString *)pn
{
    self = [super init];
    if(self) {
        self.productName = pn;
        self.voltage = 120;
    }
    return self;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"D: %@, V: %d",productName,voltage];
}
@end
