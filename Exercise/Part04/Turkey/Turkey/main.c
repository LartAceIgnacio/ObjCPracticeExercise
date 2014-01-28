//
//  main.c
//  Turkey
//
//  Created by Ace Ignacio on 1/15/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    //Declare variable called 'weight' of type float
    float weight;
    
    //put a member in the variable
    weight = 14.2;
    
    //Log it to the user
    printf("The turkey weight is : %f\n",weight);
    
    //Declare another variable of type fload
    float cookingTime;
    
    //Calculate the cookingtime and store it in the variable
    //In this case, '*' means multiplied by
    cookingTime = 15.0 + 15.0 * weight;
    
    //Log that to user
    printf("The cookingtime is: %f\n",cookingTime);
    
    return  0;
}

