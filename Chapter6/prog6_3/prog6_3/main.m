//
//  main.m
//  prog6_3
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Program to determine if a number is even or odd

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number_to_test, remainder;
        
        NSLog (@"Enter your number to be tested: ");
        scanf ("%i", &number_to_test);
        
        remainder = number_to_test % 2;
        
        if ( remainder == 0 )
            NSLog (@"The remainder is even.");
        
        if ( remainder != 0 )
            NSLog (@"The number is odd.");
    }
    return 0;
}
