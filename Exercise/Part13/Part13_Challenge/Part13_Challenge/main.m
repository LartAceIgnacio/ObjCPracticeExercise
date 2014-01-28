//
//  main.m
//  Part13_Challenge
//
//  Created by Ace Ignacio on 1/17/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        /*
        NSDate *myDate = [NSDate date];
        NSLog(@"my date introduced %@",[myDate descriptionWithLocale:[NSLocale currentLocale]]);
        
        NSDate *today = [NSDate date];
        NSLog(@"TODAY %@",today);
        */
        
        NSDate *delayedtime = [[NSDate alloc] init ];
        NSLog(@"now %@",[delayedtime descriptionWithLocale:[NSLocale currentLocale]]);
        
        double d = 28800;
        
        NSDate *now = [delayedtime dateByAddingTimeInterval:d];
        NSLog(@"NOW is %@",now);
        
        
        NSTimeZone *timeZone = [NSTimeZone systemTimeZone];
        BOOL isDLT = [timeZone isDaylightSavingTime];
        if(isDLT)
            NSLog(@"It is daylight");
        else
            NSLog(@"It is not daylight");
        
        NSLog(@"Timezone is %@",timeZone);
        
    }
    return 0;
}

