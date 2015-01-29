//
//  main.m
//  prog7_2a
//
//  Created by Nicole Samson on 1/28/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "prog7_2a.h"

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
