//
//  XYPoint.m
//  prog8_5b
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

-(void) setX: (int) xVal andY: (int) yVal
{
    x = xVal;
    y = yVal;
}

@end
