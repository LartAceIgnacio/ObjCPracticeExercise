//
//  main.m
//  NSPredicate
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *personList = [[NSMutableArray alloc]init];
        
        for(int i = 0; i < 5; i++) {
            Person *p = [[Person alloc]init];
            p.name = @"Lart";
            NSUInteger randWeight = random() % 50;
            p.weightInKiloGrams = randWeight;
            p.personId = i;
            
            [personList addObject:p];
        }
        
        NSMutableSet *assetList = [[NSMutableSet alloc]init];
        for(int i = 0; i < 5; i++) {
            Asset *a = [[Asset alloc]init];
            a.label = [NSString stringWithFormat:@"Asset id %d",i];
            a.valueoOfAsset = random() % 100;
            
            [assetList addObject:a];
        }
        
        NSSortDescriptor *pIdDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"personId" ascending:YES];
        
        [personList sortUsingDescriptors:[NSArray arrayWithObjects:pIdDescriptor, nil]];
        
        //NSLog(@"%@",personList);
        
        NSPredicate *pred = [NSPredicate predicateWithFormat:@"personId != 2"];
        NSArray *filteredArray = [personList filteredArrayUsingPredicate:pred];
        NSLog(@"%@",filteredArray);
        
        //NSLog(@"%@",assetList);
        
        for(Person *p in personList) {
            if(p.personId != 3) {
                NSLog(@"Match");
            }
        }
    }
    return 0;
}

