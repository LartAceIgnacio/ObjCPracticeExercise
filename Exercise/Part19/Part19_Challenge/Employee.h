//
//  Employee.h
//  Part19_Challenge
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person {
    int id;
    NSMutableArray *assets;
}

@property int id;

-(void) addtoArray:(Asset *)a;
-(unsigned int) valueOfAssets:(int)i;

@end
