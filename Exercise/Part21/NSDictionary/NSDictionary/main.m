//
//  main.m
//  NSDictionary
//
//  Created by Ace Ignacio on 1/21/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *personList = [[NSMutableArray alloc]init];
        
        NSMutableDictionary *executiveList = [[NSMutableDictionary alloc]init];
        
        for(int i = 0; i < 10; i++) {
            Person *p = [[Person alloc]init];
            p.name = @"Lart";
            p.age = random() % 100;
            p.weightInKilograms = random() % 100;
            
            [personList addObject:p];
            
            if(i ==0) {
                [executiveList setObject:p  forKey:@"CEO"];
            }
            
            if(i == 1) {
                [executiveList setObject:p forKey:@"CTO"];
            }
        }
        NSLog(@"%@",personList);
        
        NSLog(@"%@",executiveList);
        
        NSLog(@"CEO : %@",[executiveList objectForKey:@"CEO"]);

    }
    return 0;
}

