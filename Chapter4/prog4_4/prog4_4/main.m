//
//  main.m
//  prog4_4
//
//  Created by Nicole Samson on 1/17/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  The modulus operator

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 25, b = 5, c = 10, d = 7;
        
        NSLog (@"a %% b = %i", a % b);
        NSLog (@"a %% c = %i", a % c);
        NSLog (@"a %% d = %i", a % d);
        NSLog (@"a / d * d + a %% d = %i", a / d * d + a % d);
    }
    return 0;
}
