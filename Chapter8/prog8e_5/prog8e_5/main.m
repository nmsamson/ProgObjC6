//
//  main.m
//  prog8e_5
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "GraphicObject.h"
#import "Rectangle.h"
#import "Circle.h"
#import "Triangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        Circle *myCircle = [[Circle alloc] init];
        Triangle *myTriangle = [[Triangle alloc] init];
        
        [myPoint setX: 100 andY: 200];
        
        [myRect setWidth: .5 andHeight: .5];
        myRect.origin = myPoint;
        
        NSLog (@"Rectangle w = %g, h = %g", myRect.width, myRect.height);
        
        NSLog (@"Area = %g, Perimeter = %g", [myRect area], [myRect perimeter]);
        
        NSLog (@"Origin at (%g, %g)", myRect.origin.x, myRect.origin.y);
        
        XYPoint *movePoint = [[XYPoint alloc] init];
        [movePoint setX: 3 andY: 1];
        
        [myRect translate: movePoint];
        
        NSLog (@"Origin at (%g, %g)", myRect.origin.x, myRect.origin.y);
        
        myCircle.radius = 5;
        NSLog (@"Circle radius = %g", myCircle.radius);
        NSLog (@"Circle circumference = %g, area = %g", [myCircle circumference], [myCircle area]);
        
        [myTriangle setBase: 5 andHeight: 6];
        NSLog (@"Triangle base = %g, height = %g", myTriangle.base, myTriangle.height);
        NSLog (@"Triangle area = %g", [myTriangle area]);
        [myTriangle setSide1: 5 andSide2: 6 andSide3: 7];
        NSLog (@"Triangle side1 = %g, side2 = %g, side3 = %g, perimeter = %g", myTriangle.side1, myTriangle.side2, myTriangle.side3, [myTriangle perimeter]);
    }
    return 0;
}
