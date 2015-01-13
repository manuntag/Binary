//
//  main.m
//  Binary2
//
//  Created by David Manuntag on 2015-01-13.
//  Copyright (c) 2015 David Manuntag. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray * sortedArray = [NSArray arrayWithObjects: @1, @2, @3,@4, @5, @6, nil];
        
        NSNumber * wantedNumber = @2;
        
        // to store the middle index, unsigned int: represents only non-negative numbers
        
        NSUInteger mid;
        
        NSUInteger min = 0;
        
        NSUInteger max = [sortedArray count]-1;
        
        BOOL numberIsFound = NO;
        
        // loop will only run whil min is less than or equal to max number, when min is larger than the max, the number doesnt exist
        while (min<=max) {
            
            mid = (min + max) /2;
            
            if ([wantedNumber intValue] == [sortedArray[mid] intValue]) {
                
                NSLog(@"we located the number, its at index %lu", mid);
                numberIsFound = YES;
                break;
                
                
            }else if ([wantedNumber intValue]<[sortedArray[mid] intValue]) {
                
                max = mid - 1;
                
            }else if ([wantedNumber intValue]>[sortedArray[mid] intValue]) {
                
                min = mid + 1;
                
            }
            
            if (!numberIsFound) {
                
                NSLog(@"Sorry the number is not found");
            }
            
        }

        
        
    }
    return 0;
}
