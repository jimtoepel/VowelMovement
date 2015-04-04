//
//  main.m
//  VowelMovement
//
//  Created by Jim Toepel on 3/31/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // Create an array of strings and a countainer for devoewlized ones
        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        
        NSLog(@"original strings are: %@", originalStrings);
        
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        // Create a list
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        // Declare a block variable
        void (^devowelizer) (id, NSUInteger, BOOL *);
        
        // Compose a block and assign it to the variable
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            
            NSRange yRange = [string rangeOfString:@"y"
                                           options:NSCaseInsensitiveSearch];
            
            // Did you find a "y"?
            if (yRange.location != NSNotFound) {
                *stop = YES;    // Prevent further iterations
                return;         // End this iteration
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            //iterate over the array of vowels, replacing occurences with an empty string
            
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
                
                 
            }
            
            [devowelizedStrings addObject:newString];
            
        }; // end of block assignement
        
        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"devowelized strings: %@", devowelizedStrings);
    }
    return 0;
}
