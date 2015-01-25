//
//  main.m
//  prog5_7
//
//  Created by Nicole Samson on 1/25/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Find the greatest common divisor of two nonnegative integers

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unsigned int u, v, temp;
        
        NSLog (@"Please type in two nonnegative integers.");
        scanf ("%u%u", &u, &v);
        
        while ( v != 0) {
            temp = u % v;
            u = v;
            v = temp;
        }
        
        NSLog (@"Their greatest common divisor is %u", u);
    }
    return 0;
}
