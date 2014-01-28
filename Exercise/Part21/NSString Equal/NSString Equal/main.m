//
//  main.m
//  NSString Equal
//
//  Created by Ace Ignacio on 1/21/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *x = @"This is string A";
        NSString *y = @"This is string a";
        
        if([x isEqualToString:y]) {
            NSLog(@"x isEqual to y");
        }
        
        if(x == y) {
            NSLog(@"x == y");
        }
        
    NSMutableString *a = [[NSMutableString alloc]init];
    a = [NSMutableString stringWithFormat:@"This is string A"];
    NSMutableString *b = [[NSMutableString alloc]init];
    b = [NSMutableString stringWithFormat:@"This is string B"];
    
    
    }
    return 0;
}

