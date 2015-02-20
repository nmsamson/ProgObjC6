//
//  Circle.m
//  prog8e_5
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import "Circle.h"

@implementation Circle

@synthesize radius;

-(double) circumference { return 2 * 3.1415926 * radius; }

-(double) area { return 3.1415926 * radius * radius; }

-(double) diameter { return 2 * radius; }

@end
