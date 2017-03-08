//
//  main.m
//  Maths
//
//  Created by Andrew Solesa on 2017-03-07.
//  Copyright © 2017 KSG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        BOOL gameOn = YES;
        
        ScoreKeeper *score = [[ScoreKeeper alloc]init];
        QuestionManager *manager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc]init];
        
        while (gameOn)
        {
            Question *question = [questionFactory generateRandomQuestion];
            [manager addQuestion:question];
            
            printf("Input a answer: ");
            
            InputHandler * IHandler = [[InputHandler alloc]init];
            NSString * convertedInput = [IHandler ConvertInput];
            
            if ([convertedInput isEqualToString:@"quit"])
            {
                NSLog(@"GAME OVER");
                gameOn = NO;
                break;
            }
            
            NSInteger number = [convertedInput intValue];
            
            if (number == [question answer])
            {
                NSLog(@"Right!\n");
                score.Right++;
            }
            else
            {
                NSLog(@"Wrong!\n");
                score.Wrong++;
            }
            
            NSLog(@"%@",[manager timeOutput]);
            
            NSLog(@"%@",[score ScoreList]);
        }
    }
    return 0;
}
