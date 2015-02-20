//
//  Rectangle.h
//  prog8e_5
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "XYPoint.h"
#import "GraphicObject.h"

@interface Rectangle : GraphicObject

@property double width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (double) w andHeight: (double) h;
-(void) translate: (XYPoint *) transPt;
-(double) area;
-(double) perimeter;

@end
