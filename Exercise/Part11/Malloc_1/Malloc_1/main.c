//
//  main.c
//  Malloc_1
//
//  Created by Ace Ignacio on 1/16/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct {
    char *name;
    int age;
    float bodyweight;
} Person;


int main(int argc, const char * argv[])
{
    Person *p = (Person *)malloc(sizeof(Person));
    p->name="Lart";
    p->age=20;
    p->bodyweight=50.0;
    
    printf("My name is %s and my Age is %d and my bodyweight is %.2f.\n",p->name,p->age,p->bodyweight);
    
    free(p);
    
    p = NULL;
    
    printf("%s\n",p->name);
    return 0;
}

