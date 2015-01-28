//
//  main.m
//  prog6e_3
//
//  Created by Nicole Samson on 1/27/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 6, Exercise 3
//    Modify the print method from the Fraction class so that whole numbers are displayed as such
//    (so the fraction 5/1 should display as simply 5). Also modify the method to display fractions
//    with a numerator of 0 is simply 0.

#import <Foundation/Foundation.h>

@interface Fraction: NSObject

-(void)   print;
-(void)   setNumerator:   (int) n;
-(void)   setDenominator: (int) d;
-(int)    getNumerator;
-(int)    getDenominator;
-(double) convertToNum;

@end

@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print
{
    if ( numerator == 0 )
        NSLog (@"0");
    else if ( denominator != 0  &&  numerator % denominator == 0 )
        NSLog (@"%i", numerator / denominator);
    else
        NSLog (@" %i / %i ", numerator, denominator);
}

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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        [aFraction setNumerator: 2];
        [aFraction setDenominator: 5];
        
        [aFraction print];
        NSLog (@" =");
        NSLog (@"%g", [aFraction convertToNum]);
        
        [bFraction print];
        NSLog (@" = ");
        NSLog (@"%g", [bFraction convertToNum]);
    }
    return 0;
}
