//
//  Circle.h
//  prog8e_5
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "GraphicObject.h"

@interface Circle : GraphicObject

@property double radius;

-(double) area;
-(double) circumference;
-(double) diameter;

@end
