//
//  main.m
//  prog5e_2
//
//  Created by Nicole Samson on 1/25/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 5, Exercise 2
//    A triangular number can also be generated for any integer value of n by this formula:
//      triangularNumber = n (n + 1) / 2
//    For example, the 10th triangular number, 55, can be calculated by substituting 10 as the value for n
//    into the previous formula. Write a program that generates a table of triangular numbers using the
//    previous formula. Have the program generate every fifth traingular number between 5 and 50 (that is, 5, 10, 15, ... 50).

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //  It helps if you actually read the instructions...
        /*
        int x = 1, n = 0, m = 0;
        
        while ( x <= 50 ) {
            m += 5;
            
            for ( ; x<= m; ++x )
                n = n + x;
            
            NSLog (@" The %ith triangular number is %i", x - 1, n);
        }*/
        
        NSLog (@"n  triangular");
        NSLog (@"-- ----------");
        
        int x = 1, n = 0;
        
        for ( x = 5; x <= 50; x += 5 ) {
            n = x * ( x + 1 ) / 2;
            NSLog (@"%2i %i", x, n);
        }
    }
    return 0;
}
