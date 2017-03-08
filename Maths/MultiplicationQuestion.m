//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Andrew Solesa on 2017-03-08.
//  Copyright © 2017 KSG. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
    if (self = [super init])
    {
        [self generateQuestion];
    }
    return self;
}

-(int)multRandomValue
{
    int lower = 1;
    int upper = 12;
    int randoNumber = lower + arc4random() % (upper - lower);
    return randoNumber;
}

-(void)generateQuestion
{
    self.leftValue = [self multRandomValue];
    self.rightValue = [self multRandomValue];
    super.question = [NSString stringWithFormat:@"%d x %d\n", self.leftValue, self.rightValue];
    super.answer = super.leftValue * super.rightValue;
    NSLog(@"%@", super.question);
}

@end
