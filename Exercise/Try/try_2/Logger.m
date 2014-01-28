//
//  Logger.m
//  try_2
//
//  Created by Ace Ignacio on 1/24/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Logger.h"

@implementation Logger

-(void)WriteLogs:(NSMutableString *)s
{
    NSError *error = nil;
    
    BOOL isSuccess = [s writeToFile:@"/tmp/log.txt" atomically:YES encoding:NSUTF8StringEncoding error:&error];
    
    if(isSuccess) {
        NSLog(@"Write Success.");
    } else {
        NSLog(@"Write failed");
    }
}

@end
