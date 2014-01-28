//
//  Person.h
//  NSPredicate
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    int personId;
    float weightInKiloGrams;
    NSString *name;
}

@property int personId;
@property float weightInKiloGrams;
@property NSString *name;

-(float)doubleTheWeight;

@end
