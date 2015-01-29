//
//  prog7_2.m
//  prog7_2
//
//  Created by Nicole Samson on 1/28/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "prog7_2.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print { NSLog (@"%i/%i", numerator, denominator); }
-(double) convertToNum
{
    if ( denominator == 0 )
        return NAN;
    else
        return (double) numerator / denominator;
}

@end
