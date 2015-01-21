//
//  main.m
//  prog4e_9
//
//  Created by Nicole Samson on 1/20/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 4, Exercise 9
//    After completing exercise 8, add the following methods to the Calculator class and test them:
//      -(double) changeSign;   // change sign of accumulator
//      -(double) reciprocal;   // 1/accumulator
//      -(double) xSquared;     // accumulator squared
//
//  Adding a comment to test something.

#import <Foundation/Foundation.h>

@interface Calculator: NSObject
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) getAccumulator;
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;
-(double) changeSign;
-(double) reciprocal;
-(double) xSquared;
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
-(double) changeSign
{
    accumulator *= -1;
    return accumulator;
}
-(double) reciprocal
{
    accumulator = 1 / accumulator;
    return accumulator;
}
-(double) xSquared
{
    accumulator *= accumulator;
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
        NSLog(@"Changing sign results in: %g", [deskCalc changeSign]);
        NSLog(@"Reciprocal results in: %g", [deskCalc reciprocal]);
        NSLog(@"Squaring results in: %g", [deskCalc xSquared]);
    }
    return 0;
}
