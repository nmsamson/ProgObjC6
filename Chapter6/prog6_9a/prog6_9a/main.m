//
//  main.m
//  prog6_9a
//
//  Created by Nicole Samson on 1/26/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Program to evaluate simple expressions of the form
//    value operator value

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
        
        switch ( operator ) {
            case '+':
                [deskCalc add: value2];
                break;
            case '-':
                [deskCalc subtract: value2];
                break;
            case '*':
            case 'x':
                [deskCalc multiply: value2];
                break;
            case '/':
                [deskCalc divide: value2];
                break;
            default:
                NSLog (@"Unknown operator.");
                break;
                
        }
        
        NSLog (@"%.2f", [deskCalc getAccumulator]);
    }
    return 0;
}
