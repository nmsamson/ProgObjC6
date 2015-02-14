//
//  XYPoint.m
//  prog8e_4
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

-(void) setX: (double) xVal andY: (double) yVal
{
    x = xVal;
    y = yVal;
}

@end
