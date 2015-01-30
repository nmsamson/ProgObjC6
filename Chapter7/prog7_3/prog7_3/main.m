//
//  main.m
//  prog7_3
//
//  Created by Nicole Samson on 1/29/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "prog7_3.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        //  Set two fractions to 1/4 and 1/2 and add them together
        
        [aFraction setNumerator: 1 andDenominator: 4];
        [bFraction setNumerator: 1 andDenominator: 2];
        
        //  Print the results
        
        [aFraction print];
        NSLog (@"+");
        [bFraction print];
        NSLog (@"=");
        
        [aFraction add: bFraction];
        [aFraction print];
    }
    return 0;
}
