//
//  Person.m
//  NSPredicate
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize personId,weightInKiloGrams,name;

-(float) doubleTheWeight {
    return weightInKiloGrams * 2;
}

-(NSString *) description {
    return [NSString stringWithFormat:@"person Id: %d, name : %@, weight %.2fkg",[self personId],[self name],[self weightInKiloGrams]];
}

@end
