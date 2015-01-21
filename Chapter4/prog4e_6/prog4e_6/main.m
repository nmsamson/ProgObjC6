//
//  main.m
//  prog4e_6
//
//  Created by Nicole Samson on 1/19/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 4, Exercise 6
//    Complex numbers are numbers that contain two components: a real part ad an imaginary part.
//    If a is the real component and b is the imaginary component, this notation is used to represent the number:
//        a + b i
//    Write an Objective-C program that defines a new class called Complex. Following the paradigm established for the
//    Fraction class, define the following methods for your new class:
//      -(void) setReal: (double) a;
//      -(void) setImaginary: (double) b;
//      -(void) print;  //display as a + bi
//      -(double) real;
//      -(double) imaginary;

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface Complex: NSObject
-(void) setReal: (double) a;
-(void) setImaginary: (double) b;
-(void) print;
-(double) getReal;
-(double) getImaginary;
@end

//---- @implementation section ----
@implementation Complex
{
    double real;
    double imaginary;
}

-(void) setReal: (double) a
{
    real = a;
}

-(void) setImaginary: (double) b
{
    imaginary = b;
}

-(void) print
{
    NSLog(@"Output is: %f %fi", real, imaginary);
}

-(double) getReal
{
    return real;
}

-(double) getImaginary
{
    return imaginary;
}
@end

//---- program section ----

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Complex *complex = [[Complex alloc] init];
        
        [complex setReal: 5];
        [complex setImaginary: 12];
        [complex print];
        
        NSLog(@"The result is: %f %fi", [complex getReal], [complex getImaginary]);
    }
    return 0;
}
