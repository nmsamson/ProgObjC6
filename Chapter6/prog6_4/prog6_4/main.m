//
//  main.m
//  prog6_4
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Determine if a number is even or odd (Ver. 2)

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number_to_test, remainder;
        
        NSLog (@"Enter your number to be tested: ");
        scanf ("%i", &number_to_test);
        
        remainder = number_to_test % 2;
        
        if ( remainder == 0 )
            NSLog (@"The remainder is even.");
        else
            NSLog (@"The number is odd.");
    }
    return 0;
}
