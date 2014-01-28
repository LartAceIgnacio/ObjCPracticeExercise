//
//  main.c
//  Chapter06-07_Challenge_Presentation
//
//  Created by Ace Ignacio on 1/27/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int x = 0 , y = 1;
    while(x < 7) {
        x++;
        
        if(x%3 == 0) {
            continue;
        }
        
        y += x % 9;
        printf("%d\n",y);
    }
    return 0;
}

