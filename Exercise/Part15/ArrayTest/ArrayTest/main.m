//
//  main.m
//  ArrayTest
//
//  Created by Ace Ignacio on 1/27/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tomorrw = [now dateByAddingTimeInterval:24.0*60*60];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0*60*60];
        
        NSMutableArray *dateList = [NSMutableArray arrayWithObjects:now,tomorrw, nil];
        
        NSLog(@"%@",dateList);
        
        [dateList insertObject:yesterday atIndex:0];
        
        NSLog(@"%@",dateList);
        
    }
    return 0;
}

