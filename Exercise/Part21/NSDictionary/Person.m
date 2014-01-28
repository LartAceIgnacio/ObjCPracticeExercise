//
//  Person.m
//  NSDictionary
//
//  Created by Ace Ignacio on 1/21/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name, age, weightInKilograms;

-(NSString *)description {
    return [NSString stringWithFormat:@"Name: %@, Age:%d, Weigh,%.2f",[self name],[self age],[self weightInKilograms]];
}

@end
