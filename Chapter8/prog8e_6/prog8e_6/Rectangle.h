//
//  Rectangle.h
//  prog8e_6
//
//  Created by Nicole Samson on 2/20/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject

@property double width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (double) w andHeight: (double) h;
-(void) translate: (XYPoint *) transPt;
-(double) area;
-(double) perimeter;
-(BOOL) containsPoint: (XYPoint *) aPoint;

@end
