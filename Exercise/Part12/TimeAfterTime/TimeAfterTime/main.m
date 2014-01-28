//
//  main.m
//  TimeAfterTime
//
//  Created by Ace Ignacio on 1/16/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSDate *now = [NSDate date];
        //NSLog(@"The new date lives a %p", now);
        NSLog(@"The date is %@",now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f since the start of 1970.",seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@",later);
    }
    return 0;
}

