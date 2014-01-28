//
//  main.c
//  PBR
//
//  Created by Ace Ignacio on 1/16/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void Swap(int *x ,int *y) {
    *x = *x + *y;
    *y = *x - *y;
    *x = *x - *y;
}


int main(int argc, const char * argv[])
{
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    //pass the address of integerPart as an argument;
    fractionPart = modf(pi, &integerPart);
    
    //Find the value stored in integerpart
    printf("intergerPart = %.0f, fractionPart = %.2f\n",integerPart,fractionPart);
    
    int x = 5;
    int y = 10;
    printf("Before swap Value of x is %d\n and Value of y is %d\n",x,y);
    Swap(&x, &y);
    printf("After swap Value of x is %d\n and Value of y is %d",x,y);
    
    return 0;
}

