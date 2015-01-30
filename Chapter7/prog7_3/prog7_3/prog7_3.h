//
//  prog7_3.h
//  prog7_3
//
//  Created by Nicole Samson on 1/29/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import <Foundation/Foundation.h>

//  Define the Fraction class

@interface Fraction : NSObject

@property int numerator, denominator;

-(void)     print;
-(void)     setNumerator: (int) n andDenominator: (int) d;
-(double)   convertToNum;
-(void)     add: (Fraction *) f;

@end
