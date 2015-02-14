//
//  main.m
//  prog8_6
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//
//  Overriding Methods

#import <Foundation/Foundation.h>

//  ClassA declaration and definition
@interface ClassA: NSObject
{
    int x;  //  will be inherited by subclasses
}

-(void) initVar;
@end
////////////////////
@implementation ClassA
-(void) initVar
{
    x = 100;
}
@end

//  ClassB declaration and definition
@interface ClassB: ClassA
-(void) initVar;
-(void) printVar;
@end
////////////////////
@implementation ClassB
-(void) initVar //  added method
{
    x = 200;
}

-(void) printVar
{
    NSLog (@"x = %i", x);
}
@end
////////////////////

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassB *b = [[ClassB alloc] init];
        
        [b initVar];    //  uses overriding method in B
        
        [b printVar];   //  reveal value of x;
    }
    return 0;
}
