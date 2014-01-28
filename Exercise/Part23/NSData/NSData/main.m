//
//  main.m
//  NSData
//
//  Created by Ace Ignacio on 1/21/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSURL *url = [NSURL URLWithString:@"http://upload.wikimedia.org/wikipedia/commons/1/1a/Volkswagen_Logo.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&error];
        if(!data) {
            NSLog(@"Fetch failed %@",[error localizedDescription]);
            return 1;
        }
        
        NSLog(@"The file size is %lu bytes",[data length]);
        
        BOOL written = [data writeToFile:@"/tmp/sample3.gif"
                                 options:NSASCIIStringEncoding
                                   error:&error];
        if(!written) {
            NSLog(@"Write failed: %@",[error localizedDescription]);
            return 1;
        }
        NSLog(@"Write Success");
        
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/sample3.gif"];
        NSLog(@"The file has %lu bytes",[readData length]);
    return 0;
}

}