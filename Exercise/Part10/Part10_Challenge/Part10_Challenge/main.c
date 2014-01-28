//
//  main.c
//  Part10_Challenge
//
//  Created by Ace Ignacio on 1/16/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>
#include <time.h>

typedef struct {
    double length;
    double width;
    double area;
    double parameter;
}Square;

double getArea(Square sA){
    return sA.length * sA.width;
}

double getPerimeter(Square sP) {
    return ((sP.length * 2) + (sP.width * 2));
}

int main(int argc, const char * argv[])
{
    Square s;
    s.width = 10;
    s.length = 20;
    printf("Perimeter of the square is : %.f\n",getPerimeter(s));
    printf("Area of the square is %.f\n",getArea(s));
    return 0;
}

