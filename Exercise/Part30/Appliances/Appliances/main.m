//
//  main.m
//  Appliances
//
//  Created by Ace Ignacio on 1/22/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Appliance *a = [[Appliance alloc]init];
        a.voltage = 130;
        a.productName = @"Fan";
        NSLog(@"%@",a.description);
         
    }
    return 0;
}

