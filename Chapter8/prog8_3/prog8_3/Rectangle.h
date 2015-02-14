//
//  Rectangle.h
//  prog8_3
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject

@property int width, height;
-(int) area;
-(int) perimeter;
-(void) setWidth: (int) w andHeight: (int) h;
@end
