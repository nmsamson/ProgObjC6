//
//  main.m
//  prog5e_6b
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 5, Exercise 6 (Program 5.3)
//    In programs 5.2 through 5.5, replace all uses of the for statement with equivalent while statements.
//    Run each program to verify that both versions are identical.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n = 1, triangularNumber = 0;
        
        NSLog (@"TABLE OF TRIANGULAR NUMBERS");
        NSLog (@" n Sum from 1 to n");
        NSLog (@"-- ---------------");
        
        while ( n <= 10 ) {
            triangularNumber += n;
            NSLog (@"%2i %i", n, triangularNumber);
            ++n;
        }
    }
    return 0;
}
