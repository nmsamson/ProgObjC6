//
//  Fraction.h
//  FractionTest
//
//  Created by Nicole Samson on 1/28/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import <Foundation/Foundation.h>

// The Fraction class

@interface Fraction : NSObject

-(void)     print;
-(void)     setNumerator: (int) n;
-(void)     setDenominator: (int) d;
-(int)      getNumerator;
-(int)      getDenominator;
-(double)   convertToNum;

@end
