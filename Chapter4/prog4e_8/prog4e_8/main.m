//
//  main.m
//  prog4e_8
//
//  Created by Nicole Samson on 1/20/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 4, Exercise 8
//    The add, subtract, multiply, and divide methods from Program 4.6 do not return a value.
//    Modify these methods to return the value of the accumulator after the computation is performed.

#import <Foundation/Foundation.h>

@interface Calculator: NSObject
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) getAccumulator;
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;
@end

@implementation Calculator
{
    double accumulator;
}

-(void) setAccumulator: (double) value
{
    accumulator = value;
}
-(void) clear
{
    accumulator = 0;
}
-(double) getAccumulator
{
    return accumulator;
}
-(double) add: (double) value
{
    accumulator += value;
    return accumulator;
}
-(double) subtract: (double) value
{
    accumulator -= value;
    return accumulator;
}
-(double) multiply: (double) value
{
    accumulator *= value;
    return accumulator;
}
-(double) divide: (double) value
{
    accumulator /= value;
    return accumulator;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *deskCalc = [[Calculator alloc] init];
        
        [deskCalc setAccumulator: 100.0];
        NSLog(@"Adding results in: %g", [deskCalc add: 200.0]);
        NSLog(@"Dividing results in: %g", [deskCalc divide: 15.0]);
        NSLog(@"Subtracting results in: %g", [deskCalc subtract: 10.0]);
        NSLog(@"Multipling results in: %g", [deskCalc multiply: 5]);
        NSLog(@"The result is %g", [deskCalc getAccumulator]);
        
    }
    return 0;
}
