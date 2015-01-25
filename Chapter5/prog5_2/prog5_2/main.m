//
//  main.m
//  prog5_2
//
//  Created by Nicole Samson on 1/22/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Program to calculate the 200th triangular number
//  Introduction of the for statement

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, triangularNumber;
        
        triangularNumber = 0;
        
        for ( n = 1; n <= 200; n = n + 1 )
            triangularNumber += n;
        
        NSLog (@"The 200th triangular number is %i", triangularNumber);
    }
    return 0;
}
