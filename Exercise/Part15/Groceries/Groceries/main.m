//
//  main.m
//  Groceries
//
//  Created by Ace Ignacio on 1/17/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *pork = @"Pork";
        NSString *beans = @"Beans";
        NSString *chicken = @"Chicken";
        
        //list of groceries
        NSMutableArray *listOfGroceries = [NSMutableArray arrayWithObjects:pork,beans,chicken, nil];
        //list to buy
        NSMutableArray *listOfCartItems = [NSMutableArray array];
        
        int i = 0;
        for(NSString *s in listOfGroceries) {
            NSLog(@"grocery : %@",s);
            [listOfCartItems insertObject:s atIndex:i];
            i++;
        }
        
        //[listOfCartItems insertObject:pork atIndex:0];
        for(NSString *s in listOfCartItems) {
            NSLog(@"grocery reverse : %@",s);
        }
    }
    
    return 0;
}

