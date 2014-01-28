//
//  main.m
//  NSString
//
//  Created by Ace Ignacio on 1/17/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *str = @"pogi ko";
        
        //string with formatting
        NSString *x = [NSString stringWithFormat:@"Ang pogi ko %d times",5];
        
        //to count the number of char in a string
        //NSUInteger charCount = [x length];
        double charCountD = [x length];
        NSLog(@"string x have a %.0f char",charCountD);
        
        if([str isEqual:x])
            NSLog(@"Equal");
    }
    return 0;
}

