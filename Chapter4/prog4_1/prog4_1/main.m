//
//  main.m
//  prog4_1
//
//  Created by Nicole Samson on 1/17/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int    integerVar = 100;
        float  floatingVar = 331.79;
        double doubleVar = 8.44e+11;
        char   charVar = 'W';
        
        NSLog(@"integerVar = %i", integerVar);
        NSLog(@"floatingVar = %f", floatingVar);
        NSLog(@"doubleVar = %e", doubleVar);
        NSLog(@"doubleVar = %g", doubleVar);
        NSLog(@"charVar = %c", charVar);
    }
    return 0;
}
