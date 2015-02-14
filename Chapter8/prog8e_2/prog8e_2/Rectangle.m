//
//  Rectangle.m
//  prog8e_2
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width, height;

-(void) setWidth: (double) w andHeight: (double) h
{
    width = w;
    height = h;
}

-(void) setOrigin: (XYPoint *) pt
{
    if ( ! origin )
        origin = [[XYPoint alloc] init];
    
    origin.x = pt.x;
    origin.y = pt.y;
}

-(double) area
{
    return width * height;
}

-(double) perimeter
{
    return ( width + height ) * 2;
}

-(XYPoint *) origin
{
    return origin;
}

@end
