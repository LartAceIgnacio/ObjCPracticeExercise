//
//  main.c
//  Affirmation
//
//  Created by Ace Ignacio on 1/23/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    for(int i = 0; i < argc; i++) {
        printf("arg %d = %s\n", i, argv[i]);
    }
    
    
    return 0;
}

