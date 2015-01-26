//
//  main.m
//  prog5e_4
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 5, Exercise 4
//    A minus sign placed in front of a field width specification causes the field to be displayed left-justified.
//    Substitute the following NSLog statement for the corresponding statement in Program 5.3, run the program,
//    and compare the outputs produced by both programs:
//      NSLog (@"%-2i %i", n, triangularNumber

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, triangularNumber;
        
        NSLog (@"TABLE OF TRIANGULAR NUMBERS");
        NSLog (@" n Sum from 1 to n");
        NSLog (@"-- ---------------");
        
        for ( n = 1; n <= 10; ++n) {
            triangularNumber += n;
            NSLog (@"%-2i %i", n, triangularNumber);
        }
    }
    return 0;
}
