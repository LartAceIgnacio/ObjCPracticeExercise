//
//  main.m
//  DateList
//
//  Created by Ace Ignacio on 1/17/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //Create NSDate objects
        NSDate *delayeddate = [[NSDate alloc]init];
        NSDate *now = [delayeddate dateByAddingTimeInterval:28800];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0*60*60];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0*60*60];
        
        //Create array
        NSArray *dateList = [NSArray arrayWithObjects:now,tomorrow,yesterday, nil];
        
        //How many dates are there?
        double dateCount = [dateList count];
        NSLog(@"There are %.0f dates in the dateList",dateCount);
   
        //print a couple
        //NSLog(@"The date at index: 0 - %@",[dateList objectAtIndex:0]);
        //NSLog(@"The adte at index: 1 - %@",[dateList objectAtIndex:1]);
        /*
        for(int i = 0; i <dateCount; i++) {
            NSLog(@"The date at index %d is - %@",i,[dateList objectAtIndex:i]);
        }
         */
        
        for(NSDate *d in dateList) {
            NSLog(@"The date at index  is - %@",d);
        }
        
    }
    return 0;
}

