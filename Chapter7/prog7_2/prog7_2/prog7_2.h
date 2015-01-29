//
//  prog7_2.h
//  prog7_2
//
//  Created by Nicole Samson on 1/28/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import <Foundation/Foundation.h>

// The Fraction class

@interface Fraction : NSObject

@property int numerator, denominator;

-(void)     print;
-(double)   convertToNum;

@end
