//
//  Fraction.m
//  prog7_4a
//
//  Created by Nicole Samson on 1/31/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print { NSLog (@"%i/%i", numerator, denominator); }

-(double) convertToNum
{
    if ( denominator == 0 )
        return NAN;
    else
        return (double) numerator / denominator;
}

-(void) setNumerator: (int) n andDenominator: (int) d
{
    numerator = n;
    denominator = d;
}

//  add a Fraction to the receiver

-(void) add: (Fraction *) f
{
    //  To add two fractions:
    //  a/b + c/d = ((a*d) + (b*c)) / (b * d)
    
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
    
    [self reduce];
}

-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while ( v!= 0 ) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}

@end
