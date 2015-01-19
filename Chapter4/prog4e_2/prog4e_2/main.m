//
//  main.m
//  prog4e_2
//
//  Created by Nicole Samson on 1/19/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 4, Exercise 2:
//    Write a program that converts 27 degres from degress Fahrenheit (F) to degrees Celsius (C) using the following formula:
//    C = (F - 32) / 1.8

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double f, c, rate = 1.8;
        
        f = 63.7;
        c = (f - 32) / rate;
        NSLog(@"%g degrees Fahrenheit = %g degrees Celsius", f, c);
    }
    return 0;
}
