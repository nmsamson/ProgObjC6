//
//  main.m
//  prog6_10a
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Program to generate a table of prime numbers

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int p, d;
        BOOL isPrime;
        
        for ( p = 2; p <= 50; ++p ) {
            isPrime = YES;
            
            for ( d = 2; d < p; ++d )
                if ( p % d == 0 )
                    isPrime = NO;
            
            if ( isPrime != 0 )
                NSLog (@"%i ", p);
        }
    }
    return 0;
}
