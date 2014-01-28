//
//  main.m
//  VowelCounter
//
//  Created by Ace Ignacio on 1/23/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+VowelCounting.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *str = @"Hello world";
        NSLog(@"%@ has %d vowels",str,[str vowelCount]);
    }
    return 0;
}

