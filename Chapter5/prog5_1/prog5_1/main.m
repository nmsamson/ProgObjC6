//
//  main.m
//  prog5_1
//
//  Created by Nicole Samson on 1/21/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

//  Program to calculate the eighth triangular number

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int triangularNumber;
        
        triangularNumber = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8;
        
        NSLog (@"The eighth triangular number is %i", triangularNumber);
    }
    return 0;
}
