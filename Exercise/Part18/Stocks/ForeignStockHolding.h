//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding {
    float conversionRate;
}

//constructors
@property float conversionRate;

@end
