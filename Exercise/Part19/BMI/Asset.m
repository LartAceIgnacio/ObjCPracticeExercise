//
//  Asset.m
//  BMI
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize resaleValue, label, holder;

-(NSString *)description {
    if([self holder]) {
        return [NSString stringWithFormat:@"%@: $%d assigned to: %@",[self label], [self resaleValue],[self holder]];
    }
    else {
        return [NSString stringWithFormat:@"<%@: %d unassigned>",[self label],[self resaleValue]];
    }
    
}

-(void) dealloc {
    NSLog(@"deallocating %@",self);
}

@end
