//
//  main.m
//  prog5e_1
//
//  Created by Nicole Samson on 1/25/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 5, Exercise 1
//    Write a program to generate and display a table of n and n2, for integer values of n
//    ranging from 1 through 10. Be sure to print the appropriate column headings.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, n2;
        
        NSLog (@"n  n2");
        NSLog (@"-- --");
        
        for ( n = 1; n <= 10; ++n ) {
            n2 = n;
            NSLog (@"%2i %i", n, n2);
        }
    }
    return 0;
}
