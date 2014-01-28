//
//  main.c
//  Part03_Challenge
//
//  Created by Ace Ignacio on 1/15/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>
#include <objc/objc.h>

int main(int argc, const char * argv[])
{
    float var1 = 3.14;
    float var2 = 42.0;
    
    double sum = var1 + var2;
    
    //Display no decimals
    printf("The sum is %.f\n",sum);
    
    //Display 1 decimal
    printf("The sum is %.1f\n",sum);
    
    //Display all
    printf("The sum is %f\n",sum);
    
    //Display 2 decimals
    printf("The sum is %.2f\n",sum);
    
    return  0;
}

