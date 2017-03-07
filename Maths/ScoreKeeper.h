//
//  ScoreKeeper.h
//  Maths
//
//  Created by Andrew Solesa on 2017-03-07.
//  Copyright © 2017 KSG. All rights reserved.
//

#ifndef ScoreKeeper_h
#define ScoreKeeper_h

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property NSInteger Right;
@property NSInteger Wrong;

- (NSString *) ScoreList;

@end

#endif /* ScoreKeeper_h */
