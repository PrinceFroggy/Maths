//
//  AdditionQuestion.m
//  Maths
//
//  Created by Andrew Solesa on 2017-03-08.
//  Copyright © 2017 KSG. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

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
    super.question = [NSString stringWithFormat:@"%d + %d\n", super.leftValue, super.rightValue];
    super.answer = super.leftValue + super.rightValue;
    NSLog(@"%@", super.question);
}

@end
