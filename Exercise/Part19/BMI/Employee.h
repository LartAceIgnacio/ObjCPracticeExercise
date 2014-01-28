//
//  Employee.h
//  BMI
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person {
    int employeeId;
    NSMutableArray *assets;
}


@property int employeeId;

-(void) addAssetsObject:(Asset *)a;
-(unsigned int) valueOfAssets;


@end
