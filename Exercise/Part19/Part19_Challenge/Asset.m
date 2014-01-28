//
//  Asset.m
//  Part19_Challenge
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize resaleValue, label;

-(void)printDetails {
    NSLog(@"Name: %@, resalevalue: %d",label,resaleValue);
}

@end
