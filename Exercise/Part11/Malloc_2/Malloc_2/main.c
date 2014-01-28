//
//  main.c
//  Malloc_2
//
//  Created by Ace Ignacio on 1/16/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person *p) {
    return p->weightInKilos / (p->heightInMeters * p->heightInMeters);
};

int main(int argc, const char * argv[])
{
    Person *x = (Person *)malloc(sizeof(Person));
    
    x->heightInMeters = 2.0;
    x->weightInKilos = 81;
    
    float xBMI = bodyMassIndex(x);
    printf("The body mass is %.2f\n",xBMI);
    
    free(x);
    
    x = NULL;
    
    return 0;
}

