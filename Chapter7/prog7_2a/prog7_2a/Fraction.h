//
//  Fraction.h
//  prog7_2a
//
//  Created by Nicole Samson on 1/31/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import <Foundation/Foundation.h>

// The Fraction class

@interface Fraction : NSObject

@property int numerator, denominator;

-(void)     print;
-(void)     setNumerator: (int) n andDenominator: (int) d;
-(double)   convertToNum;

@end
