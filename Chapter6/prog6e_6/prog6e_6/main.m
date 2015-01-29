//
//  main.m
//  prog6e_6
//
//  Created by Nicole Samson on 1/28/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 6, Exercise 6
//    Write a program that takes an integer keyed in from the terminal and extracts and displays
//    each digit in English. So if the user types in 932, the program should display the following:
//      nine
//      three
//      two
//    (Remember to display zero if the user types in just 0.) NoteL This exercise is a hard one!

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, right_digit;
        
        NSLog (@"Enter your number.");
        scanf ("%i", &number);
        
        if ( number < 0 ) {
            NSLog (@"negative");
            number = -number;
        }
        
        do {
            right_digit = number % 10;
            
            switch ( right_digit ) {
                case 0:
                    NSLog (@"zero");
                    break;
                case 1:
                    NSLog (@"one");
                    break;
                case 2:
                    NSLog (@"two");
                    break;
                case 3:
                    NSLog (@"three");
                    break;
                case 4:
                    NSLog (@"four");
                    break;
                case 5:
                    NSLog (@"five");
                    break;
                case 6:
                    NSLog (@"six");
                    break;
                case 7:
                    NSLog (@"seven");
                    break;
                case 8:
                    NSLog (@"eight");
                    break;
                case 9:
                    NSLog (@"nine");
                    break;
                default:
                    NSLog (@"unknown");
                    break;
            }

            number /= 10;
        }
        while ( number != 0 );
    }
    return 0;
}
