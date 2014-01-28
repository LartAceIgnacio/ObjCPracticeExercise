//
//  main.c
//  Degrees
//
//  Created by Ace Ignacio on 1/15/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

float lastTemperature;

float fahrenheitFromCelsius(float cel)
{
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%.2f Celsious is %.2f Fharenheit\n",cel,fahr);
    return fahr;
}


int main(int argc, const char * argv[])
{
    float freezeInc = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInc);
    printf("Water freezes at %.2f degrees Fahrenheit\n",freezeInF);
    printf("The last temperature converted was %.2f\n",lastTemperature);
    return EXIT_SUCCESS;
}

