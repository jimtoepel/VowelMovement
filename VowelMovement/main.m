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
        
    }
    return 0;
}
