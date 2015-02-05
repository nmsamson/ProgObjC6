//
//  Fraction.m
//  prog7e_1
//
//  Created by Nicole Samson on 2/5/15.
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

-(Fraction *) add: (Fraction *) f
{
    //  To add two fractions:
    //  a/b + c/d = ((a*d) + (b*c)) / (b * d)
    
    //  result will store the result of the addition
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

//  subtract argument from receiver

-(Fraction *) subtract: (Fraction *) f
{
    //  result will store the result of the subtraction
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator - denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

//  multiply receiver by argument

-(Fraction *) multiply: (Fraction *) f
{
    //  result will store the result of the multiplication
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    return result;
}

//divide receiver by argument

-(Fraction *) divide: (Fraction *) f
{
    //result will store the result of the division
    
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    
    [result reduce];
    return result;
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
