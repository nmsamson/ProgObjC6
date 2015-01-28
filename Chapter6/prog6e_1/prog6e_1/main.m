//
//  main.m
//  prog6e_1
//
//  Created by Nicole Samson on 1/27/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 6, Exercise 1
//    Write a program that asks the user to type in two integer values.
//    Test these two numbers to determine whether the first is evenly divisible by the second and then display
//    an appropriate message at the terminal.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number1, number2, mod;
        NSLog (@"Enter two numbers to test: ");
        scanf ("%i %i", &number1, &number2);
        
        if ( number2 == 0 )
            NSLog (@"Divide by zero!");
        else if ( number1 == 0 )
            NSLog (@"Everything divides into zero!");
        else {
            mod = number1 % number2;
        
            if ( mod == 0 )
                NSLog (@"%i is evenly divisible by %i", number1, number2);
            else
                NSLog (@"%i is not evenly divisible by %i", number1, number2);
        }
    }
    return 0;
}
