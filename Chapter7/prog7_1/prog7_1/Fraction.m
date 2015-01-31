//
//  Fraction.m
//  prog7_1
//
//  Created by Nicole Samson on 1/31/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction { int numerator, denominator; }

-(void) print { NSLog (@"%i/%i", numerator, denominator); }
-(void) setNumerator: (int) n { numerator = n; }
-(void) setDenominator: (int) d { denominator = d; }
-(int) getNumerator { return numerator; }
-(int) getDenominator { return denominator; }
-(double) convertToNum
{
    if ( denominator == 0 )
        return NAN;
    else
        return (double) numerator / denominator;
}

@end
