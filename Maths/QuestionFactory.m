//
//  QuestionFactory.m
//  Maths
//
//  Created by Andrew Solesa on 2017-03-08.
//  Copyright © 2017 KSG. All rights reserved.
//

#import "QuestionFactory.h"

@interface QuestionFactory ()
@property (nonatomic) NSArray* questionType;
@end

@implementation QuestionFactory

- (instancetype)init
{
    if (self = [super init])
    {
        _questionType = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

-(int)randomValue
{
    int lower = 0;
    int upper = 4;
    int randomNumber = lower + arc4random() % (upper - lower);

    return randomNumber;
}

-(Question*)generateRandomQuestion
{
    
    NSString *question = [self.questionType objectAtIndex:[self randomValue]];
    return [[NSClassFromString(question) alloc]init] ;
}

@end
