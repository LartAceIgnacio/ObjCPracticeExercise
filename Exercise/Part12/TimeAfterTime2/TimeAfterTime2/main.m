//
//  main.m
//  TimeAfterTime2
//
//  Created by Ace Ignacio on 1/16/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //get date, interval, timeinterval, birthinterval
        NSDate *now = [[NSDate alloc]init];
        NSLog(@"The date today is: %@",now);
        
        NSDate *afterTime = [now dateByAddingTimeInterval:1000];
        NSLog(@"its %@ after 1000 seconds",afterTime);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"Its been %.2f since 1970",seconds);
        
        NSDateComponents *comp = [[NSDateComponents alloc] init];
        [comp setYear:1993];
        [comp setMonth:3];
        [comp setDay:8];
        [comp setHour:0];
        [comp setMinute:0];
        [comp setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comp];
        
        double d = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"Time interval is %.2f",d);
        
    
    }
    return 0;
}

