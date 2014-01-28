//
//  main.m
//  Part14_Challenge
//
//  Created by Ace Ignacio on 1/17/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *host = [[NSHost currentHost]localizedName];
        
        NSLog(@"The host name is %@",host);
        
    }
    return 0;
}

