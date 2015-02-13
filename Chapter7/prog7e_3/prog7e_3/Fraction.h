//
//  Fraction.h
//  prog7e_3
//
//  Created by Nicole Samson on 2/13/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import <Foundation/Foundation.h>

//  Define the Fraction class

@interface Fraction : NSObject

@property int numerator, denominator;

-(void)         print: (BOOL) reduced;
-(void)         setNumerator: (int) n andDenominator: (int) d andIsNegative: (BOOL) s;
-(double)       convertToNum;
-(Fraction *)   add: (Fraction *) f;
-(Fraction *)   subtract: (Fraction *) f;
-(Fraction *)   multiply: (Fraction *) f;
-(Fraction *)   divide: (Fraction *) f;
-(void)         reduce;

@end
