//
//  main.m
//  prog6e_7
//
//  Created by Nicole Samson on 1/28/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 6, Exercise 7
//    Program 6.10 has several inefficiencies. One inefficiency results from checking even numbers.
//    Because any even number greater than 2 obviously cannot be prime, the program could simply skip
//    all even numbers as possible primes and as possible divisors.
//    The inner for loop is also inefficient because the value of p is always dividied by all values
//    of d from 2 through p-1. You can avoid this inefficiency if you add a test for the value of isPrime
//    in the conditions of the for loop. In this manner, you can set up the for loop to continue as long
//    as no divisor is found and the value of d is less than p.
//    Modify Program 6.10 to incorporate these two changes; then run the program to verify its operation.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int p, d;
        BOOL isPrime, skip;
        
        for ( p = 2; p <= 50; ++p ) {
            //NSLog (@"Begin for: %i", p);
            isPrime = YES;
            
            for ( d = 2; d < p  &&  isPrime; ++d ) {
                //NSLog (@"%i mod 2 = %i", d, d % 2);
                if ( d % 2 == 0 )
                    skip = YES;
                if ( p % d == 0 )
                    isPrime = NO;
            }
            
            if ( isPrime )
                NSLog (@"%i ", p);
        }
    }
    return 0;
}
