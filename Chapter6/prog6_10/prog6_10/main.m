//
//  main.m
//  prog6_10
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Program to generate a table of prime numbers

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int p, d, isPrime;
        
        for ( p = 2; p <= 50; ++p ) {
            isPrime = 1;
            
            for ( d = 2; d < p; ++d )
                if ( p % d == 0 )
                    isPrime = 0;
            
            if ( isPrime != 0 )
                NSLog (@"%i ", p);
        }
    }
    return 0;
}
