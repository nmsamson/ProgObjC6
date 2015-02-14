//
//  main.m
//  prog8e_1
//
//  Created by Nicole Samson on 2/14/15.
//  Copyright (c) 2015 Nicole Samson. All rights reserved.
//

#import <Foundation/Foundation.h>

//  ClassA declaration and definition
@interface ClassA: NSObject
{
    int x;  //  will be inherited by subclasses
}

-(void) initVar;
-(void) printVar;
@end
////////////////////
@implementation ClassA
-(void) initVar
{
    x = 100;
}

-(void) printVar
{
    NSLog (@"x = %i", x);
}
@end

//  ClassB declaration and definition
@interface ClassB: ClassA
-(void) initVar;
@end
////////////////////
@implementation ClassB
-(void) initVar //  added method
{
    x = 200;
}
@end

//  ClassC declaration and definition
@interface ClassC: ClassB
-(void) initVar;
@end
////////////////////
@implementation ClassC
-(void) initVar //  added method
{
    x = 300;
}
@end
////////////////////

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassA *a = [[ClassA alloc] init];
        ClassB *b = [[ClassB alloc] init];
        ClassC *c = [[ClassC alloc] init];
        
        [a initVar];    //  uses ClassA method
        [a printVar];   //  reveal value of x
        
        [b initVar];    //  uses overriding ClassB method
        [b printVar];   //  reveal value of x
        
        [c initVar];    //  uses overriding ClassC method
        [c printVar];   //  reveal value of x
    }
    return 0;
}
