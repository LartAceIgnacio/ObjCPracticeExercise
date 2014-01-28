//
//  main.c
//  Part07_Challenge
//
//  Created by Ace Ignacio on 1/16/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    for(int i = 99; i >= 0; i-=3) {
        if(i % 5 == 0) {
            printf("Found one!\n");
            continue;
        }
        printf("%d\n",i);
    }
    return 0;
}

