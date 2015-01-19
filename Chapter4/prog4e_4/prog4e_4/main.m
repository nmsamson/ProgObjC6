//
//  main.m
//  prog4e_4
//
//  Created by Nicole Samson on 1/19/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 4, Excercise 4
//    Write a program to evaluate the polynoamial shown here.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double x, result;
        
        x = 2.55;
        
        result = (3 * 3 * 3) - (5 * 5) + 6;
        NSLog(@"The result is: %g", result);
    }
    return 0;
}
