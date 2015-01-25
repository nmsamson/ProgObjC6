//
//  main.m
//  prog5_3
//
//  Created by Nicole Samson on 1/22/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Program to generate a table of triangular numbers

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, triangularNumber;
        
        NSLog (@"TABLE OF TRIANGULAR NUMBERS");
        NSLog (@" n Sum from 1 to n");
        NSLog (@"-- ---------------");
        
        for ( n = 1; n <= 10; ++n) {
            triangularNumber += n;
            NSLog (@"%i              %i", n, triangularNumber);
        }
    }
    return 0;
}
