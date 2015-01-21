//
//  main.m
//  prog4e_5
//
//  Created by Nicole Samson on 1/20/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 4, Exercise 5
//    Write a program that evaluates the following expression and displays the results.
//    (Remeber to use exponential format to display the result.)
//      (3.31 * 10^-8 + 2.01 * 10^-7 / (7.16 * 10^-6 + 2.01 * 10^-8)

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        long double result;
        
        result = (3.31e-8 + 2.01e-7) / (7.16e-6 + 2.01e-8);
        NSLog(@"The result is: %LG \n (I gave up on 10^x a while ago....)", result);
    }
    return 0;
}
