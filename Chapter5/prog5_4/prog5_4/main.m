//
//  main.m
//  prog5_4
//
//  Created by Nicole Samson on 1/25/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, number, triangularNumber;
        
        NSLog (@"What triangular number do you want?");
        scanf ("%i", &number);
        
        triangularNumber = 0;
        
        for ( n = 1; n <= number; ++n )
            triangularNumber += n;
        
        NSLog (@"Triangular number %i is %i\n", number, triangularNumber);
    }
    return 0;
}
