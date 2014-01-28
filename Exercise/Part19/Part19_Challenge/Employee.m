//
//  Employee.m
//  Part19_Challenge
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize id;


-(void)addtoArray:(Asset *)a {
    if(!assets) {
        assets = [[NSMutableArray alloc]init];
    }
    [assets addObject:a];
}

-(unsigned int) valueOfAssets:(int)i {
    return i*10;
}


@end
