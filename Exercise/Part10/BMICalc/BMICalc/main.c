//
//  main.c
//  BMICalc
//
//  Created by Ace Ignacio on 1/16/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>

//Declaration of the struct
typedef struct {
    float heighInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p){
    return p.weightInKilos / (p.heighInMeters * p.heighInMeters);
}


int main(int argc, const char * argv[])
{
    Person person;
    person.heighInMeters = 1.8;
    person.weightInKilos = 96;
    printf("person weighs %i kilograms\n",person.weightInKilos);
    printf("person is %.2f meters tall\n",person.heighInMeters);
    float bmi = bodyMassIndex(person);
    printf("person has a BMI of %.2f\n",bmi);
    
    return 0;
}

