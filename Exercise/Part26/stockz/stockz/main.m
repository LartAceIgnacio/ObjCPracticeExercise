//
//  main.m
//  stockz
//
//  Created by Ace Ignacio on 1/22/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *stocks = [[NSMutableArray alloc]init];
        
        NSMutableDictionary *stock;
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200]
                  forKey:@"shares"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160]
                  forKey:@"shares"];
        [stocks addObject:stock];
        
        BOOL writeSuccess = [stocks writeToFile:@"/tmp/stocs.plist"
                                     atomically:YES];
        
        if(writeSuccess) {
            NSLog(@"Write success!");
        } else {
            NSLog(@"Write failed.");
        }
    }
    return 0;
}

