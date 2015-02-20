//
//  Triangle.h
//  prog8e_5
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "GraphicObject.h"

@interface Triangle : GraphicObject

@property double base, height, side1, side2, side3;

-(void) setBase: (double) b andHeight: (double) h;
-(void) setSide1: (double) one andSide2: (double) two andSide3: (double) three;
-(double) perimeter;
-(double) area;

@end
