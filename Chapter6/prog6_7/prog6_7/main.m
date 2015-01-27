//
//  main.m
//  prog6_7
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  This program categorizes a single character that is entered from the keyboard

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char c;
        
        NSLog (@"Enter a single character:");
        scanf (" %c", &c);
        
        if ( (c >= 'a' && c <= 'z' )  ||  ( c >= 'A' && c <= 'Z' ) )
            NSLog (@"It's an alphabetic character.");
        else if ( c >= '0' && c <= '9' )
            NSLog (@"It's a digit.");
        else
            NSLog (@"It's a special character.");
    }
    return 0;
}
