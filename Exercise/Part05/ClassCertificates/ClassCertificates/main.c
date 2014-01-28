//
//  main.c
//  ClassCertificates
//
//  Created by Ace Ignacio on 1/15/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

void congratulateStudent(char *student, char *course, int numDays)
{
    printf("%s has done as much as %s Programming as I could fit into %d days.\n", student, course,numDays);
}

int main(int argc, const char * argv[])
{
    //printf("Mark has done as much Cocoa programming as I could fit into 5days\n");
    //printf("Bo has done as much Objective-C programming as I could fit into 2 days\n");
    //printf("Mike has done as much Phython Programming as I could fit into 5days\n");
    //printf("Ted has done as much iOS programming as I could fit into 5days\n");
    
    congratulateStudent("Mark", "Cocoa", 5);
    sleep(2);
    congratulateStudent("Bo","Objective-C",2);
    sleep(2);
    congratulateStudent("Mike", "Phyton", 5);
    sleep(2);
    congratulateStudent("Ted", "iOS", 5);
    
    return 0;
}



