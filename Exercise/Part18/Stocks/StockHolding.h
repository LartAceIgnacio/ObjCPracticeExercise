//
//  StockHolding.h
//  Stocks
//
//  Created by Ace Ignacio on 1/17/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject {
    int numOfShares;
    float purchaseharePrice;
    float currentSharePrice;
}

@property int numOfShares;
@property float purchaseSharePrice;
@property float currentSharePrice;

-(float)costInDollars;
-(float)valueInDollars;

@end
