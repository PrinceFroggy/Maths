//
//  ScoreKeeper.m
//  Maths
//
//  Created by Andrew Solesa on 2017-03-07.
//  Copyright © 2017 KSG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (NSString *) ScoreList
{
    NSString *scoreKeeping;
    
    if (_Right + _Wrong != 0)
    {
        NSInteger total = _Right + _Wrong;
        CGFloat percent = ((float)_Right/total) * 100;
        scoreKeeping = [NSString stringWithFormat:@"score: %ld right and %ld wrong ---- %f%%\n", _Right, _Wrong, percent];
    }
    
    return scoreKeeping;
}

@end
