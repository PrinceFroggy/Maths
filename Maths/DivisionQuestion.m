//
//  DivisionQuestion.m
//  Maths
//
//  Created by Andrew Solesa on 2017-03-08.
//  Copyright © 2017 KSG. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init
{
    if (self = [super init])
    {
        [self generateQuestion];
    }
    return self;
}

-(int)divRandomValue
{
    int lower = 1;
    int upper = 10;
    int randomNumber = lower + arc4random() % (upper - lower);
    return randomNumber;
}

-(void)generateQuestion
{
    self.rightValue = [self divRandomValue];
    self.leftValue = self.rightValue * [self divRandomValue];
    super.answer = super.leftValue / super.rightValue;
    super.question = [NSString stringWithFormat:@"%d ÷ %d\n", self.leftValue, self.rightValue];
    NSLog(@"%@", super.question);
}

@end
