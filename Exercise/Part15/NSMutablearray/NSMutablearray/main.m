//
//  main.m
//  NSMutablearray
//
//  Created by Ace Ignacio on 1/17/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //Create three NSDate objects
        NSDate *now = [[NSDate alloc]init];
        now = [now dateByAddingTimeInterval:28800];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60 * 60];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60 * 60];
        
        NSMutableArray *dateList = [NSMutableArray array];
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        [dateList insertObject:yesterday atIndex:0];
        
        for(NSDate *d in dateList) {
            NSLog(@"Here is the date %@",d);
        }
        
    }
    return 0;
}

