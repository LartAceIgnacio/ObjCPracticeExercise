//
//  main.m
//  Stocks
//
//  Created by Ace Ignacio on 1/17/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        ForeignStockHolding *s1 = [[ForeignStockHolding alloc]init];
        s1.numOfShares = 1;
        s1.currentSharePrice = 1000;
        s1.purchaseSharePrice = 1000;
        s1.conversionRate = 1.0;
        
        ForeignStockHolding *s2 = [[ForeignStockHolding alloc]init];
        s2.numOfShares = 2;
        s2.currentSharePrice = 2000;
        s2.purchaseSharePrice = 2000;
        s2.conversionRate = 2.0;
        
        
        ForeignStockHolding *s3 = [[ForeignStockHolding alloc]init];
        s3.numOfShares = 3;
        s3.currentSharePrice = 3000;
        s3.purchaseSharePrice = 3000;
        s3.conversionRate = 4.0;
        
        NSMutableArray *listofStocks = [NSMutableArray array];
        [listofStocks addObject:s1];
        [listofStocks addObject:s2];
        [listofStocks addObject:s3];
        
        //float costInDollars;
        for(ForeignStockHolding *s in listofStocks) {
            //costInDollars = [s costInDollars];
            NSLog(@"# of shares: %d, Cost: %.2f, CostInDollars: %.2f ",s.numOfShares,[s costInDollars],[s costInDollars]);
        }
        
    }
    return 0;
}

