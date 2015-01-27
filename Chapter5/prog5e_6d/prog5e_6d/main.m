//
//  main.m
//  prog5e_6d
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 5, Exercise 6 (Program 5.5)
//    In programs 5.2 through 5.5, replace all uses of the for statement with equivalent while statements.
//    Run each program to verifty that both versions are identical.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n = 1, number, triangularNumber = 0, counter = 1;
        
        while ( counter <= 5 ) {
            NSLog (@"What triangular number do you want?");
            scanf ("%i", &number);
            
            triangularNumber = 0;
            n = 1;
            
            while ( n <= number ) {
                triangularNumber += n;
                ++n;
            }
            
            NSLog (@"Triangular number %i is %i\n", number, triangularNumber);
            
            ++counter;
        }
    }
    return 0;
}
