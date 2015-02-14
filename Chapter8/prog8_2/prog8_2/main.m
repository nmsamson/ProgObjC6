//
//  main.m
//  prog8_2
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        
        [myRect setWidth: 5 andHeight: 8];
        
        NSLog (@"Rectangle: w = %i, h = %i", myRect.width, myRect.height);
        NSLog (@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
    }
    return 0;
}
