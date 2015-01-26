//
//  main.m
//  prog5e_3
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 5, Exercise 3
//    The factorial of an integer n, written n!, is the product of the consecutive integers 1 through n.
//    For example, 5 factorial is calculated as follows:
//      5! = 5 x 4 x 3 x 2 x 1 = 120
//    Write a program to generate and print a table of the first 10 factorials.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i, f, n;
        
        NSLog (@"n  n!");
        NSLog (@"-- ------");
        
        for ( i = 1; i <= 10; ++i ) {
            for ( f = i, n = 1 ; f > 0; --f ) {
                n *= f;
                //NSLog (@"i: %i f: %i n: %i", i, f, n);
            }
            NSLog (@"%2i %i", i, n);
        }
    }
    return 0;
}
