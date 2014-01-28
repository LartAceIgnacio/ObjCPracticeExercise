//
//  main.m
//  BMI
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Employee *e = [[Employee alloc]init];
        e.heightInMeters = 10.1;
        e.weightInKilos = 20.1;
        e.employeeId = 1;
        
        NSLog(@"BMI: %.2f",[e bodyMassIndex:5]);
        
    }
    return 0;
}

