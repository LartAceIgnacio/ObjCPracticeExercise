//
//  main.c
//  Addresses
//
//  Created by Ace Ignacio on 1/16/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 17;
    int *AddressofI = &i;
    
    printf("i stores the value at address %p\n",AddressofI);
    
    printf("i stores its value at %p\n",&i);
    
    printf("This functions starts at %p\n",main);
    
    printf("The int stored at AddressofI is %d\n",*AddressofI);
    
    *AddressofI = 89;
    printf("No i is %d\n",i);
    
    printf("An int is %zu bytes\n",sizeof(int));
    printf("A pointer is %zu bytes\n",sizeof(AddressofI));
    
    float *myPointer;
    
    myPointer = NULL;
    if(myPointer) {
        printf("myPointer is not null\n");
    }
    else if(!myPointer) {
        printf("myPointer is null\n");
    }
    
    return 0;
}

