//
//  main.m
//  prog6e_5
//
//  Created by Nicole Samson on 1/28/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 6, Exercise 5
//    We developed Program 5.9 to reverse the digits of an integer typed in from the terminal.
//    However, this program does not function well if you type in a negative number.
//    Find out what happens in such a case, and then modify the program so that the negative
//    numbers are correctly handled. By this, we mean that if the number -8645 were typed in,
//    for example, the output of the program should be 5468-.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, right_digit;
        BOOL isNegative = NO;
        
        NSLog (@"Enter your number.");
        scanf ("%i", &number);
        
        if ( number < 0 ) {
            isNegative = YES;
            number = -number;
        }
        
        do {
            right_digit = number % 10;
            NSLog (@"%i", right_digit);
            number /= 10;
        }
        while ( number != 0 );
        
        if ( isNegative )
            NSLog (@"-");
    }
    return 0;
}
