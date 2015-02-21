//
//  Rectangle.m
//  prog8e_6
//
//  Created by Nicole Samson on 2/20/15.
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

-(BOOL) containsPoint: (XYPoint *) aPoint
{
    double endX, endY;
    BOOL containsX, containsY;
    
    endX = origin.x + width;
    endY = origin.y + height;
    
    if ( aPoint.x >= origin.x && aPoint.x <= endX )
        containsX = YES;
    else
        containsX = NO;
    
    if ( aPoint.y >= origin.y && aPoint.y <= endY )
        containsY = YES;
    else
        containsY = NO;
    
    if ( containsX && containsY )
        return YES;
    else
        return NO;
}

@end
