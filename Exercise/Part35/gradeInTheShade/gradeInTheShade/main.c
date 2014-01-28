//
//  main.c
//  gradeInTheShade
//
//  Created by Ace Ignacio on 1/23/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

float averageFloats(float *data, int dataCount)
{
    float sum = 0.0;
    for(int i = 0; i < dataCount; i++) {
        sum += data[i];
    }
    return  sum/dataCount;
}


int main(int argc, const char * argv[])
{
    float *gradeBook = malloc(3 * sizeof(float));
    gradeBook[0] = 60.2;
    gradeBook[1] = 94.5;
    gradeBook[2] = 81.1;
    
    float avg = averageFloats(gradeBook, 3);
    
    free(gradeBook);
    gradeBook = NULL;
    
    printf("Average: %.2f",avg);

    return 0;
}

