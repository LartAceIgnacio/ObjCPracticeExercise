//
//  Person.h
//  BMITime
//
//  Created by Ace Ignacio on 1/17/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    int weightInKilos;
    float heightInMeters;
}

@property int weightInKilos;
@property float heightInMeters;
        
-(float) bodyMassIndex;

@end
