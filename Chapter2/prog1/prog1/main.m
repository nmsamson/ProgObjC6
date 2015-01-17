// First program example

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    @autoreleasepool {
        NSLog(@"Programming is fun!");
        NSLog(@"Programming in Objective-C is even more fun!");
        NSLog(@"Testing...\n..1\n...2\n....3");
        
        int value1, value2, sum, diff;
        sum = 50 + 25;
        NSLog(@"The sum of 50 and 25 is %i", sum);
        
        value1 = 50;
        value2 = 25;
        sum = value1 + value2;
        NSLog(@"The sum of %i and %i is %i", value1, value2, sum);
        
        NSLog(@"In Objective-C, lowercase letters are significant.\nmain is where program execution begins.\nOpen and closed braces enclose program statements in a routine.\nAll program statements must be terminated by a semicolon");
        
        value1 = 15;
        value2 = 87;
        diff = value2 - value1;
        NSLog(@"The difference between %i and %i is %i",value2, value1, diff);
        
        /* COMPUTE RESULT */
        sum = 25 + 37 - 19;
        // DISPLAY RESULTS
        NSLog(@"The answer is %i", sum);
        
        int answer, result;
        answer = 100;
        result = answer - 10;
        NSLog(@"The result is %i\n", result + 5);
    }
    return 0;
}
