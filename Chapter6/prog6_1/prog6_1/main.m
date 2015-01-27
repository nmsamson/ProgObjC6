//
//  main.m
//  prog6_1
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Calculate the absolute value of an integer

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number;
        
        NSLog (@"Type in your number: ");
        scanf ("%i", &number);
        
        if ( number < 0 )
            number = -number;
        
        NSLog (@"The absolute value is %i", number);
    }
    return 0;
}
