//
//  GraphicObject.m
//  prog8e_5
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "GraphicObject.h"

@implementation GraphicObject

@synthesize fillColor, lineColor, filled;

-(void) setFillColor:(int)fc andFilled:(BOOL)f andLineColor:(int)lc
{
    fillColor = fc;
    lineColor = lc;
    filled = f;
}

@end
