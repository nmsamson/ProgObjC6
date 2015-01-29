//
//  main.m
//  prog6e_4
//
//  Created by Nicole Samson on 1/28/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 6, Exercise 4
//    Write a program that acts as a simple printing calculator. The program should allow the user
//    to type in expressions of the following form:
//      number operator
//    The program should recognize the following operators:
//      + - * / S E
//    The S operator tells the program to set the accumulator to the typed-in number, and the E operator
//    tells the program that execution is to end.
//    The arithmetic operations are performed on the contents of the accumulator, with the number that was keyed
//    in acting as the second operand. The following is a sample run showing how the program should operate:
//      Begin Calculations
//      10 S                Set Accumulator to 10
//      = 10.000000         Contents of Accumulator
//      2 /                 Divide by 2
//      = 5.000000          Contents of Accumulator
//      55 -                Subtract 55
//      = -50.000000
//      100.25 S            Set Accumulator to 100.25
//      = 100.250000
//      4 *                 Multiply by 4
//      = 401.000000
//      0 E                 End of program
//      = 401.000000
//      End of Calculations.
//    Make sure that the program detects division by zero and also checks for unknown operators.
//    Use the Calculator class developed in Program 6.8 for performing your calculations.
//    Note: Remember to use a space charater in your scanf format string (for example, "%f %c")
//    to skip whitepaces characters in the input.


#import <Foundation/Foundation.h>

@interface Calculator: NSObject

// accumulator methods
-(void)   setAccumulator: (double) value;
-(void)   clear;
-(double) getAccumulator;
@end

@implementation Calculator { double accumulator; }
-(void) setAccumulator: (double) value { accumulator = value; }
-(void) clear { accumulator = 0; }
-(double) getAccumulator { return accumulator; }
-(void) add: (double) value { accumulator += value; }
-(void) subtract: (double) value { accumulator -= value; }
-(void) multiply: (double) value { accumulator *= value; }
-(void) divide: (double) value
{
    if ( value == 0 )
        NSLog (@"Unable to divide by 0!");
    else
        accumulator /= value;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double value;
        char   operator;
        BOOL   continueProcessing = YES;
        Calculator *deskCalc = [[Calculator alloc] init];
        [deskCalc setAccumulator: 0];
        
        NSLog (@"Begin Calculations");
        
        while ( continueProcessing ) {
            scanf ("%lf %c", &value, &operator);
            
            if ( operator == 'E'  ||  operator == 'e' )
                continueProcessing = NO;
            else if ( operator == '+' )
                [deskCalc add: value];
            else if ( operator == '-' )
                [deskCalc subtract: value];
            else if ( operator == '*' )
                [deskCalc multiply: value];
            else if ( operator == '/' )
                [deskCalc divide: value];
            else if ( operator == 'S'  ||  operator == 's' )
                [deskCalc setAccumulator: value];
            else
                NSLog (@"Unknown operator.");
        
            NSLog (@"= %f", [deskCalc getAccumulator]);
        }
        NSLog (@"End of Calculations");
    }
    return 0;
}
