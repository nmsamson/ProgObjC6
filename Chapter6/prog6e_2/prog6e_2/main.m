//
//  main.m
//  prog6e_2
//
//  Created by Nicole Samson on 1/27/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 6, Exercise 2
//    Program 6.8A displays the value in the accumulator even if an invalid operator is entered
//    or division by zero is attempted. Fix that problem.

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
-(void) divide: (double) value { accumulator /= value; }
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double value1, value2;
        char   operator;
        Calculator *deskCalc = [[Calculator alloc] init];
        
        NSLog (@"Type in your expression.");
        scanf ("%lf %c %lf", &value1, &operator, &value2);
        
        [deskCalc setAccumulator: value1];
        if ( operator == '+' ) {
            [deskCalc add: value2];
            NSLog (@"%.2f", [deskCalc getAccumulator]);
        }
        else if ( operator == '-' ) {
            [deskCalc subtract: value2];
            NSLog (@"%.2f", [deskCalc getAccumulator]);
        }
        else if ( operator == '*' ) {
            [deskCalc multiply: value2];
            NSLog (@"%.2f", [deskCalc getAccumulator]);
        }
        else if ( operator == '/' )
            if ( value2 == 0 )
                NSLog (@"Division by zero.");
            else {
                [deskCalc divide: value2];
                NSLog (@"%.2f", [deskCalc getAccumulator]);
            }
            else
                NSLog (@"Unknown operator.");
        
        
    }
    return 0;
}
