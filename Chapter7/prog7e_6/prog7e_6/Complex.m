//
//  Complex.m
//  prog7e_6
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void) print { NSLog(@"Output is: %g + %gi", real, imaginary); }

-(void) setReal: (double) r andImaginary: (double) i
{
    real = r;
    imaginary = i;
}

//  add a Fraction to the receiver

-(Complex *) add: (Complex *) complexNum
{
    Complex *result = [[Complex alloc] init];
    
    result.real = real + complexNum.real;
    result.imaginary = imaginary + complexNum.imaginary;
    
    return result;
}
@end
