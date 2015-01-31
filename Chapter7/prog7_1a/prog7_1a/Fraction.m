//
//  Fraction.m
//  prog7_1a
//
//  Created by Nicole Samson on 1/31/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction { int numerator, denominator; }

@synthesize numerator, denominator;

-(void) print { NSLog (@"%i/%i", numerator, denominator); }
-(double) convertToNum
{
    if ( denominator == 0 )
        return NAN;
    else
        return (double) numerator / denominator;
}

@end
