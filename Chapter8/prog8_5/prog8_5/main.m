//
//  main.m
//  prog8_5
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX: 100 andY: 200];
        
        [myRect setWidth: 5 andHeight: 8];
        myRect.origin = myPoint;
        
        NSLog (@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
        
        NSLog (@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        
        [myPoint setX: 50 andY: 50];
        NSLog (@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
    }
    return 0;
}
