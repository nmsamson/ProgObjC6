//
//  Complex.h
//  prog7e_6
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;

-(void)         print;
-(void)         setReal: (double) r andImaginary: (double) i;
-(Complex *)    add: (Complex *) complexNum;

@end
