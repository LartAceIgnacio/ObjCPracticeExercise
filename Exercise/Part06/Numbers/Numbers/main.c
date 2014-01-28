//
//  main.c
//  Numbers
//
//  Created by Ace Ignacio on 1/15/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[])
{
    printf("3 * 3 + 5 * 2 = %d\n", 3 * 3 + 5 * 2);
    
    printf("11/3 = %d remainder of %d\n", 11/3, 11%3);
    
    printf("11 / 3.0 = %f\n", 11.0 / 3);
    
    printf("The absolute value of -5 is %d\n", abs(-5));

    printf("The lower absolute value of -5.23 is %ld\n",labs(-5));
    
    double y = 12345.6789;
    
    printf("y is %f\n",y);
    
    printf("y is %e\n",y);
    
    
    return 0;
}

