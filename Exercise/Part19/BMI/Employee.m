//
//  Employee.m
//  BMI
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeId;

-(float) bodyMassIndex:(int)i {
    return [super bodyMassIndex:5];
}

-(void) addAssetsObject:(Asset *)a {
    if(!assets) {
        assets = [[NSMutableArray alloc]init];
    }
    [assets addObject:a];
    [a setHolder:self];
}

-(unsigned int) valueOfAssets {
    //sumup the resale value if assets
    unsigned int sumOfReSaleValue = 0;
    for(Asset *a in assets) {
        sumOfReSaleValue += a.resaleValue;
    }
    return sumOfReSaleValue;
}

-(NSString *) description {
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>",[self employeeId],[self valueOfAssets]];
}
-(void)dealloc {
    NSLog(@"Deallocating %@",self);
}




@end
