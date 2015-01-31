//
//  Fraction.h
//  prog7_5
//
//  Created by Nicole Samson on 1/31/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import <Foundation/Foundation.h>

//  Define the Fraction class

@interface Fraction : NSObject

@property int numerator, denominator;

-(void)         print;
-(void)         setNumerator: (int) n andDenominator: (int) d;
-(double)       convertToNum;
-(Fraction *)   add: (Fraction *) f;
-(void)         reduce;

@end
