//
//  main.m
//  Callbacks
//
//  Created by Ace Ignacio on 1/21/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Logger *logger = [[Logger alloc]init];
        
       /* NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.orf/cache/epub/205/pg205.txt"];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchcon = [[NSURLConnection alloc] initWithRequest:request delegate:logger startImmediately:YES];*/
        
        NSLog(@"HELLO");
        NSTimer *time = [NSTimer scheduledTimerWithTimeInterval:2.0 target:logger selector:@selector(sayOuch:) userInfo:nil repeats:YES];
        
        [[NSRunLoop currentRunLoop]run];
        
    }
    return 0;
}

