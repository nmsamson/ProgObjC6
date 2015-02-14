//
//  main.m
//  prog8e_3
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import <Foundation/Foundation.h>

//  ClassA declaration and definition

@interface ClassA: NSObject
{
    int x;
}

-(void) initVar;
@end

@implementation ClassA
-(void) initVar
{
    x = 100;
}
@end

//  Class B declaration and definition

@interface ClassB : ClassA
-(void) printVar;
@end

@implementation ClassB
-(void) printVar
{
    NSLog (@"x = %i", x);
}
@end

//  Class B2 declaration and definition

@interface ClassB2: ClassA
-(void) printVar;
@end

@implementation ClassB2
-(void) printVar
{
    NSLog (@"x = %i", x);
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassB *b = [[ClassB alloc] init];
        
        [b initVar];    //  will use inherited method
        [b printVar];   //  reveal value of x
    }
    return 0;
}
