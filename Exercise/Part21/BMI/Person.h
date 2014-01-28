//
//  Person.h
//  BMI
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    float heightInMeters;
    float weightInKilos;
}

@property float weightInKilos;
@property float heightInMeters;

-(float) bodyMassIndex:(int) i;
-(void) addToArray:(NSMutableArray *)theArray;

@end
