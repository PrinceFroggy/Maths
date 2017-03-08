//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Andrew Solesa on 2017-03-08.
//  Copyright © 2017 KSG. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    if (self = [super init])
    {
        [self generateQuestion];
    }
    return self;
}


-(void)generateQuestion
{
    if (super.leftValue > super.rightValue)
    {
        super.question = [NSString stringWithFormat:@"%d - %d\n", super.leftValue, super.rightValue];
        super.answer = super.leftValue - super.rightValue;
    }
    else
    {
        super.question = [NSString stringWithFormat:@"%d - %d\n", super.rightValue, super.leftValue];
        super.answer = super.rightValue - super.leftValue;
    }
    NSLog(@"%@", super.question);
}

@end
