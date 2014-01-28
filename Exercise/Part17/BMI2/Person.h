//
//  Person.h
//  BMI2
//
//  Created by Ace Ignacio on 1/17/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    int weightInKilos;
    float heightInMeters;
}

//constructors
@property int weightInKilos;
@property float heightInMeters;

//methods
-(float) bodyMassIndex:(int) i;

-(void) addToArray:(NSMutableArray *)theArray;


@end
