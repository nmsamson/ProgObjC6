//
//  main.m
//  prog7_2
//
//  Created by Nicole Samson on 1/28/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "prog7_2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        
        // set fraction to 1/3
        
        myFraction.numerator = 1;
        myFraction.denominator = 3;
        
        // display the fraction's numerator and denominator
        
        NSLog (@"The numerator is %i, and the denominator is %i", myFraction.numerator, myFraction.denominator);
    }
    return 0;
}
