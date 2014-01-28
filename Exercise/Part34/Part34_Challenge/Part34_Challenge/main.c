//
//  main.c
//  Part34_Challenge
//
//  Created by Ace Ignacio on 1/23/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>
#include <string.h>

int spaceCount(char *s)
{
    int count = 0;
    for(int i = 0; i <= strlen(s); i++)
    {
        if(s[i] == 0x20)
            count++;
    }
    return count;
}

int main(int argc, const char * argv[])
{
    const char *sentence = "He was not in the cab at that time";
    int space = spaceCount(sentence);
    printf("\%s\" has %d spaces\n", sentence,space);
    
    return 0;
}

