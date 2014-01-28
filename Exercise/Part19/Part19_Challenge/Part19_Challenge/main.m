//
//  main.m
//  Part19_Challenge
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Employee *emp = [[Employee alloc]init];
        emp.name = @"Lart";
        emp.age = 20;
        emp.id = 0;
        
        Asset *asset = [[Asset alloc]init];
        asset.label = @"Asset sample";
        asset.resaleValue = 5.0;
        
        [emp addtoArray:asset];
        
        
        
    }
    return 0;
}

