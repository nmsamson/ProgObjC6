//
//  main.m
//  prog8_3
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Square.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square *mySquare = [[Square alloc] init];
        
        [mySquare setSide: 5];
        
        NSLog (@"Square s = %i", [mySquare side]);
        NSLog (@"Area = %i, Perimeter = %i", [mySquare area], [mySquare perimeter]);
    }
    return 0;
}
