//
//  Rectangle.m
//  prog8e_5
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

-(void) translate: (XYPoint *) transPt
{
    if ( ! origin )
        origin = [[XYPoint alloc] init];
    
    XYPoint *holdPoint = [[XYPoint alloc] init];
    holdPoint.x = origin.x + transPt.x;
    holdPoint.y = origin.y + transPt.y;
    
    origin.x = holdPoint.x;
    origin.y = holdPoint.y;
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
