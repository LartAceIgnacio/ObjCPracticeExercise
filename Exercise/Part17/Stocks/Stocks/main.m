//
//  main.m
//  Stocks
//
//  Created by Ace Ignacio on 1/17/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        StockHolding *s1 = [[StockHolding alloc]init];
        s1.numOfShares = 1;
        s1.currentSharePrice = 1000;
        s1.purchaseSharePrice = 1000;
        
        StockHolding *s2 = [[StockHolding alloc]init];
        s2.numOfShares = 2;
        s2.currentSharePrice = 2000;
        s2.purchaseSharePrice = 2000;
        
        StockHolding *s3 = [[StockHolding alloc]init];
        s3.numOfShares = 3;
        s3.currentSharePrice = 3000;
        s3.purchaseSharePrice = 3000;
        
        NSMutableArray *listofStocks = [NSMutableArray array];
        [listofStocks addObject:s1];
        [listofStocks addObject:s2];
        [listofStocks addObject:s3];
        
        //float costInDollars;
        for(StockHolding *s in listofStocks) {
            //costInDollars = [s costInDollars];
            NSLog(@"# of shares: %d, Cost in Dollars: %.2f ",s.numOfShares,[s costInDollars]);
        }
        
    }
    return 0;
}

