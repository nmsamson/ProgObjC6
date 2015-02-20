//
//  GraphicObject.h
//  prog8e_5
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject

@property int fillColor, lineColor;
@property BOOL filled;

-(void) setFillColor: (int) fc andFilled: (BOOL) f andLineColor: (int) lc;

@end
