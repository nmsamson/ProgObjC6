//
//  main.m
//  prog5e_5
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 5, Exercise 5
//    Program 5.5 allows the user to type in only five different numbers.
//    Modify that program so that the user can type in the number of triangular numbers to be calculated.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, number, triangularNumber, counter, max;
        
        NSLog (@"How many triangular numbers would you like to calculate?");
        scanf ("%i", &max);
        
        for ( counter = 1; counter <= max; ++counter ) {
            NSLog (@"What triangular number do you want?");
            scanf ("%i", &number);
            
            triangularNumber = 0;
            
            for ( n = 1; n <= number; ++n )
                triangularNumber += n;
            
            NSLog (@"Triangular number %i is %i\n", number, triangularNumber);
        }
    }
    return 0;
}
