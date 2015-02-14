//
//  Square.m
//  prog8_3
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Square.h"

@implementation Square: Rectangle

-(void) setSide: (int) s
{
    [self setWidth: s andHeight: s];
}

-(int) side
{
    return self.width;
}

@end
