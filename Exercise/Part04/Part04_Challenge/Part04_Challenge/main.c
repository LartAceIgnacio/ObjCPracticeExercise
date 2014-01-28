//
//  main.c
//  Part04_Challenge
//
//  Created by Ace Ignacio on 1/15/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>
//#include <objc/objc.h>

int main(int argc, const char * argv[])
{
    int i = 20;
    int j = 25;
    
    int k = (i > j) ? 10 : 5;
    
    if(5 < j - k)
    {
        printf("The first expression is true\n");
    }
    else if(j > i)
    {
        printf("The second expression is true\n");
    }
    else
    {
        printf("Neither expression is true\n");
    }
    return  0;
}

