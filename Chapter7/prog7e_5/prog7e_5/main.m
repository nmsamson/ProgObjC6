//
//  main.m
//  prog7e_5
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        
        [aFraction setNumerator: 100 andDenominator: 200];
        [aFraction print];
        
        [aFraction setNumerator: 1 andDenominator: 3];
        [aFraction print];
    }
    return 0;
}
