//
//  main.c
//  Coolness
//
//  Created by Ace Ignacio on 1/16/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    /*
    int i = 0;
    while (i < 12) {
        printf("Lart is Cool\n");
        i++;
    }
     */
    
    /*
    for(int i = 0; i <12; i++) {
        printf("%d Lart is Cool\n",i);
    }
     */
    
    /*
    int i;
    for(i = 0; i<12; i++) {
        if(i % 3 == 0) {
            continue;
        }
        
        printf("Checking i = %d\n",i);
        
        if(i + 90 == i *i) {
            break;
        }
    }
    printf("The answer is %d\n",i);
    */
    int i = 0;
    do {
        printf("%d Lart is Cool\n",i);
        i++;
    } while (i < 12);
    
    return 0;
}

