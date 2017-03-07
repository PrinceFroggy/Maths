//
//  InputHandler.m
//  Maths
//
//  Created by Andrew Solesa on 2017-03-07.
//  Copyright © 2017 KSG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"

@implementation InputHandler


- (NSString *) ConvertInput
{
    char inputChars[255];
    
    fgets(inputChars, 255, stdin);
    
    NSString *input = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    NSString *trimmedInput = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return trimmedInput;
}

@end
