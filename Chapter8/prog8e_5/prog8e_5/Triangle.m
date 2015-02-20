//
//  Triangle.m
//  prog8e_5
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Triangle.h"

@implementation Triangle

@synthesize base, height, side1, side2, side3;

-(void) setBase: (double) b andHeight: (double) h
{
    base = b;
    height = h;
}

-(void) setSide1: (double) one andSide2: (double) two andSide3: (double) three
{
    side1 = one;
    side2 = two;
    side3 = three;
}

-(double) perimeter { return side1 + side2 + side3; }

-(double) area { return .5 * base * height; }

@end
