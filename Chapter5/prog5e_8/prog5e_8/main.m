//
//  main.m
//  prog5e_8
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 5, Exercise 8
//    Write a program that calculates the sum of the digits of an integer.
//    For example, the sum of the digits of the number 2155 is 2 + 1 + 5 + 5, or 13.
//    The program should accept any arbitrary integer the user types.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, right_digit, sum = 0;
        
        NSLog (@"Enter your number.");
        scanf ("%i", &number);
        
        while ( number != 0 ) {
            right_digit = number % 10;
            sum += right_digit;
            number /= 10;
        }
        
        NSLog (@"The sum of the digits in %i is %i", number, sum);
    }
    return 0;
}
