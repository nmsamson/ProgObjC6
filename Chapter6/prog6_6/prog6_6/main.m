//
//  main.m
//  prog6_6
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Program to implement the sign function

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, sign;
        
        NSLog (@"Please type in a number: ");
        scanf ("%i", &number);
        
        if ( number < 0 )
            sign = -1;
        else if ( number == 0)
            sign = 0;
        else
            sign = 1;
        
        NSLog (@"Sign = %i", sign);
    }
    return 0;
}
