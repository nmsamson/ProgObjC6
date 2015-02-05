//
//  main.m
//  prog7e_2
//
//  Created by Nicole Samson on 2/5/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        Fraction *resultFraction;
        
        //  Set two fractions to 1/4 and 1/2 and add them together
        
        [aFraction setNumerator: 1 andDenominator: 2];
        [bFraction setNumerator: 1 andDenominator: 4];
        
        //  Print the results
        
        [aFraction print: NO];
        NSLog (@"+");
        [bFraction print: NO];
        NSLog (@"=");
        
        resultFraction = [aFraction add: bFraction];
        [resultFraction print: YES];
        
        resultFraction = [aFraction subtract: bFraction];
        [resultFraction print: YES];
        
        resultFraction = [aFraction multiply: bFraction];
        [resultFraction print: YES];
        
        resultFraction = [aFraction divide: bFraction];
        [resultFraction print: YES];
    }
    return 0;
}
