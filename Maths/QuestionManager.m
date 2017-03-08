//
//  QuestionManager.m
//  Maths
//
//  Created by Andrew Solesa on 2017-03-08.
//  Copyright © 2017 KSG. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype) init
{
    if (self = [super init])
    {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) addQuestion: (Question *) question
{
    [self.questions addObject:question];
}

- (NSString *) timeOutput
{
    for (NSInteger i = 0; i < self.questions.count; i++)
    {
        _totalTime += [self.questions[i] answerTime];
    }
    
    double averageTime = _totalTime / (double)self.questions.count;
    
    return [NSString stringWithFormat:@"total time: %.2fs, average time: %.2fs", _totalTime, averageTime];
}

@end
