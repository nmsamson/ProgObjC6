//
//  main.m
//  prog5_9
//
//  Created by Nicole Samson on 1/25/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Program to reverse the digits of a number

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, right_digit;
        
        NSLog (@"Enter your number.");
        scanf ("%i", &number);
        
        do {
            right_digit = number % 10;
            NSLog (@"%i", right_digit);
            number /= 10;
        }
        while ( number != 0 );
    }
    return 0;
}
