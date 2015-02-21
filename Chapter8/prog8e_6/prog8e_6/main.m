//
//  main.m
//  prog8e_6
//
//  Created by Nicole Samson on 2/20/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX: 100 andY: 200];
        
        [myRect setWidth: 5 andHeight: 5];
        myRect.origin = myPoint;
        
        NSLog (@"Rectangle w = %g, h = %g", myRect.width, myRect.height);
        
        NSLog (@"Area = %g, Perimeter = %g", [myRect area], [myRect perimeter]);
        
        NSLog (@"Origin at (%g, %g)", myRect.origin.x, myRect.origin.y);
        
        XYPoint *somePoint = [[XYPoint alloc] init];
        [somePoint setX: 101 andY: 201];
        
        if ( [myRect containsPoint: somePoint] )
        {
            NSLog (@"Contains the point");
        }
    }
    return 0;
}
