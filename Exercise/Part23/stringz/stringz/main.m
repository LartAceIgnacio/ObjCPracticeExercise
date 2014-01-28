//
//  main.m
//  stringz
//
//  Created by Ace Ignacio on 1/21/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableString *str = [[NSMutableString alloc]init];
        for(int i = 0; i < 100; i++) {
            [str appendString:@"Lart ACE Cool"];
        }
        NSError *errorRead = nil;
        NSString *result = [[NSString alloc] initWithContentsOfFile:@"/tmp/cool.txt"
                                                           encoding:NSASCIIStringEncoding
                                                              error:&errorRead];
        if(result) {
            NSLog(@"%@",result);
        } else {
            NSLog(@"%@",[errorRead localizedDescription]);
        }
    }
    return 0;
}

