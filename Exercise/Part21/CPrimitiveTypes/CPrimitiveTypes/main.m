//
//  main.m
//  CPrimitiveTypes
//
//  Created by Ace Ignacio on 1/21/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *numList = [[NSMutableArray alloc]init];
        [numList addObject:[NSNumber numberWithInt:4]];
        [numList addObject:[NSNumber numberWithFloat:5.23]];
        
        NSLog(@"%@",numList);
    }
    return 0;
}

