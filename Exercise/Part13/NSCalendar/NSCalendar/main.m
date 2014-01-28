//
//  main.m
//  NSCalendar
//
//  Created by Ace Ignacio on 1/17/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [[NSDate alloc]init];
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        
        NSUInteger month = [cal ordinalityOfUnit:NSMonthCalendarUnit inUnit:NSYearCalendarUnit forDate:now];
        
        NSUInteger day = [cal ordinalityOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit forDate:now];
        
        NSLog(@"This is month %lu The day %lu",month,day);
        
        NSUInteger hourOfYear = [cal ordinalityOfUnit:NSHourCalendarUnit inUnit:NSYearCalendarUnit forDate:now];
        
        NSLog(@"Its %lu hour of the year",hourOfYear);
        
        
    }
    return 0;
}

