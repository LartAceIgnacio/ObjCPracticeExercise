//
//  main.m
//  Constants
//
//  Created by Ace Ignacio on 1/21/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#define Lart() (@"LART IS SO COOL")
#import <Foundation/Foundation.h>
#import "Blender.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        /*
        NSLog(@"\u03c0 is %f",M_PI);
        NSLog(@"%d", MAX(10,12));
        NSLog(@"%@", Lart());
        
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money here is: %@",currency);*/
        
        Blender *b = [[Blender alloc]init];
        b.speed = 5;
        NSLog(@"%@",b);

}
    return 0;
}

