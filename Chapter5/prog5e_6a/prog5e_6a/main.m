//
//  main.m
//  prog5e_6a
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 5, Exercise 6 (Program 5.2)
//    In programs 5.2 through 5.5, replace all uses of the for statement with equivalent while statements.
//    Run each program to verify that both versions are identical.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n = 1, triangularNumber = 0;
        
        while ( n <= 200 ) {
            triangularNumber += n;
            ++n;
        }

        NSLog (@"The 200th triangular number is %i", triangularNumber);
    }
    return 0;
}
