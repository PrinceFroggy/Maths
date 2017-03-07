//
//  main.m
//  Maths
//
//  Created by Andrew Solesa on 2017-03-07.
//  Copyright © 2017 KSG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        BOOL gameOn = YES;
        
        ScoreKeeper *score = [[ScoreKeeper alloc]init];
        
        while (gameOn)
        {
            AdditionQuestion *Question = [[AdditionQuestion alloc] init];
            
            NSLog(@"%@", [Question question]);
            
            printf("Input a answer: ");
            
            InputHandler * IHandler = [[InputHandler alloc]init];
            NSString * convertedInput = [IHandler ConvertInput];
            
            if ([convertedInput isEqualToString:@"quit"])
            {
                NSLog(@"GAME OVER");
                gameOn = YES;
                break;
            }
            
            NSInteger number = [convertedInput intValue];
            
            if (number == [Question answer])
            {
                NSLog(@"Right!\n");
                score.Right++;
            }
            else
            {
                NSLog(@"Wrong!\n");
                score.Wrong++;
            }
            
            NSLog(@"%@",[score ScoreList]);
        }
    }
    return 0;
}
