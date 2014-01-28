//
//  Person.m
//  BMI
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize weightInKilos;
@synthesize heightInMeters;

-(float)bodyMassIndex:(int)i {
    return weightInKilos * heightInMeters;
}

-(void)addToArray:(NSMutableArray *)theArray {
    [theArray addObject:self];
}

@end
