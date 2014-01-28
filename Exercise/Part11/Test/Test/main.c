//
//  main.c
//  Test
//
//  Created by Ace Ignacio on 1/16/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[])
{
    //Declare a pointer
    float *startOfBuffer;
    
    //Ask to use some bytes from the heap
    startOfBuffer = malloc(sizeof(float));
    // use the buffer here
    
    //Release your claim on the memory so it can be reused
    free(startOfBuffer);
    
    startOfBuffer = NULL;
    
    return 0;
}

