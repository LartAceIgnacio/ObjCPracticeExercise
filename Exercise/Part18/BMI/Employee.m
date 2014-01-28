//
//  Employee.m
//  BMI
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeId;

-(float) bodyMassIndex:(int)i {
    return [super bodyMassIndex:5];
}


@end
