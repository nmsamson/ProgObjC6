//
//  main.m
//  prog7e_6
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Complex.h"

//---- program section ----

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Complex *complexA = [[Complex alloc] init];
        Complex *complexB = [[Complex alloc] init];
        
        [complexA setReal: 5.3 andImaginary: 7];
        [complexB setReal: 2.7 andImaginary: 4];
        
        Complex *resultComplex = [complexA add: complexB];
        [resultComplex print];
    }
    return 0;
}
