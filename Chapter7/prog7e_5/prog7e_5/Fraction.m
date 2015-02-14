//
//  Fraction.m
//  prog7e_5
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int _numerator;
    int _denominator;
}

//@synthesize numerator, denominator;

-(void) print { NSLog (@"%i/%i", _numerator, _denominator); }
-(double) convertToNum
{
    if ( _denominator == 0 )
        return NAN;
    else
        return (double) _numerator / _denominator;
}

-(void) setNumerator: (int) n andDenominator: (int) d
{
    _numerator = n;
    _denominator = d;
}

@end
