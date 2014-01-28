//
//  main.m
//  TechExam_01
//
//  Created by Ace Ignacio on 1/28/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

void Problem01() {
    int a = 10;
    NSInteger b = 10;
    float c = 10.0f;
    double d = 10.0f;
    
    //a = a * b / c % d - 1;
    //a = a * b / a % b - 1;
}

void Problem02() {
    //float e = 10;
    NSInteger e = 10;
    e = ((e / e) * e) - e / e * e;
    NSLog(@"%d", e);
}

/*
void Problem03() {
    NSInteger x = 100;
    void (^sample)(void) = ^(void) {
        x++;
        NSLog(@"%d, ", x);
    };
    sample();
    　　 NSLog(@"%d", x);

}
 */

void Problem07() {
    NSArray *arr = [[NSArray alloc] initWithObjects:@"A", @"B"];
    NSLog(@"%@", [arr objectAtIndex:0]);
}


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //Problem01();
        //Problem02();
        //Problem03();
    }
    return 0;
}

