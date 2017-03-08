//
//  QuestionManager.h
//  Maths
//
//  Created by Andrew Solesa on 2017-03-08.
//  Copyright © 2017 KSG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : Question

@property (nonatomic) NSMutableArray* questions;
@property (nonatomic) NSTimeInterval totalTime;

- (void) addQuestion: (Question *) question;

- (NSString *) timeOutput;

@end
