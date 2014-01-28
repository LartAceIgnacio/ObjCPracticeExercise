//
//  main.m
//  BMI2
//
//  Created by Ace Ignacio on 1/17/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Person *p = [[Person alloc]init];
        p.weightInKilos = 3;
        p.heightInMeters = 172.3;
        
        float bmi = [p bodyMassIndex:(3)];
        NSLog(@"%.2f",bmi);
        
        NSMutableArray *array = [[NSMutableArray alloc]init];
        [p addToArray:array];
        
        for(Person *p1 in array) {
            NSLog(@"%.2f",[p bodyMassIndex:5]);
        }
    }
    return 0;
}

