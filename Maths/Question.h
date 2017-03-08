//
//  AdditionQuestion.h
//  Maths
//
//  Created by Andrew Solesa on 2017-03-07.
//  Copyright © 2017 KSG. All rights reserved.
//

#ifndef AdditionQuestion_h
#define AdditionQuestion_h

@interface Question : NSObject

@property NSString * question;
@property (nonatomic) NSInteger answer;

@property int leftValue;
@property int rightValue;

@property NSDate * startTime;
@property NSDate * endTime;

- (NSInteger) answer;

- (NSTimeInterval) answerTime;

-(void) generateQuestion;

@end

#endif /* AdditionQuestion_h */
