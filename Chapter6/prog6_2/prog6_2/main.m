//
//  main.m
//  prog6_2
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

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

-(void) print { NSLog (@" %i / %i ", numerator, denominator); }

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
        
        [aFraction setNumerator: 1];
        [aFraction setDenominator: 4];
        
        [aFraction print];
        NSLog (@" =");
        NSLog (@"%g", [aFraction convertToNum]);
        
        [bFraction print];
        NSLog (@" = ");
        NSLog (@"%g", [bFraction convertToNum]);
    }
    return 0;
}
