//
//  main.c
//  Triangle
//
//  Created by Ace Ignacio on 1/15/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float A, float B)
{
    return A + B;
}


int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n",angleC);
    return 0;
}

