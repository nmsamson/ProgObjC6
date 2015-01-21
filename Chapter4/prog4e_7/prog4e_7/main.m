//
//  main.m
//  prog4e_7
//
//  Created by Nicole Samson on 1/20/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 4, Exercise 7
//    Suppose you are developing a library of routines to manipulate graphical objects.
//    Start by defining a new class called Rectangle. For now, just keep track of the rectangle's width and height.
//    Develop methods to set the rectangle's width and height, retrieve these values, and calculate the rectangle's
//    area and perimeter. Assume that these rectangle objects describe rectangles on an integral grid, such as a
//    computer screen. In that case, assume that the width and height of the rectangle are integer values.
//    Here is the @interface section for the Rectangle class:
//      @interface Rectangle: NSObject
//      -(void) setWidth: (int) w;
//      -(void) setHeight: (int) h;
//      -(int) getWidth;
//      -(int) getHeight;
//      -(int) getArea;
//      -(int) getPerimeter;
//      @end
//    Write the implementation section and a test program to test your new class and methods.

#import <Foundation/Foundation.h>


@interface Rectangle: NSObject
-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(int) getWidth;
-(int) getHeight;
-(int) getArea;
-(int) getPerimeter;
@end

@implementation Rectangle
{
    int width, height;
}

-(void) setWidth: (int) w
{
    width = w;
}
-(void) setHeight: (int) h
{
    height = h;
}
-(int) getWidth
{
    return width;
}
-(int) getHeight
{
    return height;
}
-(int) getArea
{
    return width * height;
}
-(int) getPerimeter
{
    return (width * 2) + (height * 2);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *rectangle = [[Rectangle alloc] init];
        
        [rectangle setWidth: 12];
        [rectangle setHeight: 20];
        
        NSLog(@"Rectangle with width=%i and height=%i has area=%i and perimeter=%i",
              [rectangle getWidth], [rectangle getHeight], [rectangle getArea], [rectangle getPerimeter]);
    }
    return 0;
}
