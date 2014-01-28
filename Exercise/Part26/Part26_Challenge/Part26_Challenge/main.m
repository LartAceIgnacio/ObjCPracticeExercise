//
//  main.m
//  Part26_Challenge
//
//  Created by Ace Ignacio on 1/22/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableDictionary *dict1 = [NSMutableDictionary dictionary];
        [dict1 setObject:@"SAMPLE DICT"
                  forKey:@"Dictionary"];
        NSMutableArray *array = [[NSMutableArray alloc]init];
        [array addObject:@"ARRAY OBJECT"];
        
        NSMutableArray *data = [[NSMutableArray alloc]init];
        
        NSMutableDictionary *dict;
        dict = [NSMutableDictionary dictionary];
        
        [dict setObject:@"str1"
                 forKey:@"string values"];
        [dict setObject:[NSNumber numberWithInt:100]
                 forKey:@"int value"];
        [dict setObject:[NSNumber numberWithFloat:1.023]
                 forKey:@"float value"];
        NSDate *now = [[NSDate alloc]init];
        [dict setObject:now
                 forKey:@"Date value"];
        [dict setObject:dict1
                 forKey:@"Dictionary value"];
        [dict setObject:array
                 forKey:@"Array values"];
        
        
        [data addObject:dict];
        
        bool writeSuccess = [data writeToFile:@"/tmp/Part16Challenge.plist"
                                   atomically:YES];
        
        if(writeSuccess) {
            NSLog(@"Write success.");
        } else {
            NSLog(@"Write failed.");
        }
        
    }
    return 0;
}

