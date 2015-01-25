//
//  main.m
//  prog5_6
//
//  Created by Nicole Samson on 1/25/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  This program introduces the while statement

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int count = 1;
        
        while ( count <= 5 ) {
            NSLog (@"%i", count);
            ++count;
        }
    }
    return 0;
}
