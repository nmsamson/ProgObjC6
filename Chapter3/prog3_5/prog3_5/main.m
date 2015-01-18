//
//  main.m
//  prog3_5
//
//  Created by Nicole Samson on 1/17/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Chapter 3, Exercise 7:
//
//      Define a class called XYPoint that will hold a Cartesian coordinate (x,y), where x and y are integers.
//      Define methods to individually set the x and y coordinates of a point and retrieve their values.
//      Write an Objective-C program to implement your new class and test it.

#import <Foundation/Foundation.h>

//---- @interface section ----

@interface XYPoint: NSObject

-(void) print;
-(void) setXCoordinate: (int) x;
-(void) setYCoordinate: (int) y;
-(int)  getXCoordinate;
-(int)  getYCoordinate;

@end

//---- @implementation section ----

@implementation XYPoint
{
    int xCoordinate;
    int yCoordinate;
}

-(void) print
{
    NSLog(@"(%i,%i)", xCoordinate, yCoordinate);
}

-(void) setXCoordinate: (int) x
{
    xCoordinate = x;
}

-(void) setYCoordinate: (int) y
{
    yCoordinate = y;
}

-(int) getXCoordinate
{
    return xCoordinate;
}

-(int) getYCoordinate
{
    return yCoordinate;
}

@end

//---- program section ----

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        XYPoint *coordinates = [[XYPoint alloc] init];
        
        // Set point to (3,5)
        
        [coordinates setXCoordinate: 3];
        [coordinates setYCoordinate: 5];
        
        // Display the point using the print method
        
        NSLog(@"The coordinate is: ");
        [coordinates print];
        
        //Display the point using the get methods
        
        NSLog(@"The coordinate is: (%i,%i)", [coordinates getXCoordinate], [coordinates getYCoordinate]);
    }
    return 0;
}
