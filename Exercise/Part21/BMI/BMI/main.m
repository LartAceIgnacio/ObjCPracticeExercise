//
//  main.m
//  BMI
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *empList = [[NSMutableArray alloc]init];
        
        for(int i = 0; i < 10; i++) {
            Employee *e = [[Employee alloc]init];
            e.weightInKilos = 70.0 + i;
            e.heightInMeters = 120.0 + i;
            e.employeeId = i;
            
            [empList addObject:e];
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc]init];
        
        for(int i = 0; i < 10; i++) {
            Asset *asset = [[Asset alloc]init];
            NSString *currentlabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentlabel;
            asset.resaleValue = i * 10;
            
            
            NSUInteger randomIndex = random() % [empList count];
            
            Employee *randomEmployee = [empList objectAtIndex:randomIndex];
            
            //asset.holder = randomEmployee;
            [randomEmployee addAssetsObject:asset];
            
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeId" ascending:YES];
        [empList sortUsingDescriptors:[NSArray arrayWithObjects:voa,eid, nil]];
        
        
        NSLog(@"Employees : %@",empList);
    
        NSLog(@"allASsets: %@",allAssets);
        NSLog(@"Giving up one ownership of one employee");
        
        [empList removeObjectAtIndex:5];
       
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"valueOfAssets > 50"];
        
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"To be reclaimed %@",toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of array");
        
        empList = nil;
        
    }
    sleep(100);
    return 0;
}

