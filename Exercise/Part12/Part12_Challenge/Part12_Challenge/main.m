//
//  main.m
//  Part12_Challenge
//
//  Created by Ace Ignacio on 1/16/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1993];
        [comps setMonth:3];
        [comps setDay:8];
        [comps setHour:0];
        [comps setMinute:0];
        [comps setSecond:0];
        
        NSDate *now = [NSDate date];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        NSTimeInterval SecondsSince = [now timeIntervalSinceDate:dateOfBirth];
        
        //NSDate *Interval = [NSDate timeIntervalSinceDate:dateOfBirth];
        NSLog(@"The interval is %f",SecondsSince);
    }
    return 0;
}

