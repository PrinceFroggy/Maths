//
//  AdditionQuestion.m
//  Maths
//
//  Created by Andrew Solesa on 2017-03-07.
//  Copyright © 2017 KSG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@implementation Question

- (instancetype) init
{
    if (self = [super init])
    {
        _startTime = [NSDate date];
        _leftValue = arc4random_uniform(90) + 10;
        _rightValue = arc4random_uniform(90) + 10;
        _question = [NSString stringWithFormat:@"%d + %d = ?\n", self.leftValue, self.rightValue];
        _answer = self.leftValue + self.rightValue;
    }
    return self;
}

- (NSInteger) answer
{
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime
{
    return [_endTime timeIntervalSinceDate: _startTime];
}

-(void) generateQuestion
{
}

@end
