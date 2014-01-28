//
//  main.m
//  BMITime
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
        p.weightInKilos = 60;
        p.heightInMeters = 123.23;
        
        float bmi = [p bodyMassIndex];
        
        NSLog(@"h: %.2f w:%d bmi:%.2f",p.heightInMeters,p.weightInKilos,bmi);

    }
    return 0;
}

