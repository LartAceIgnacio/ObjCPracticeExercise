//
//  StockHolding.m
//  Stocks
//
//  Created by Ace Ignacio on 1/17/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize numOfShares;
@synthesize purchaseSharePrice;
@synthesize currentSharePrice;


-(float) costInDollars {
    return purchaseSharePrice * numOfShares;
}

-(float) valueInDollars {
    return currentSharePrice * numOfShares;
}

@end
