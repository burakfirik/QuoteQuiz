//
//  Quiz.m
//  QuoteQuiz
//
//  Created by Burak Firik on 7/14/12.
//  Copyright (c) 2012 Burak Firik. All rights reserved.
//

#import "Quiz.h"

@interface Quiz()

@property (nonatomic, strong) NSString *quote;
@property (nonatomic, strong) NSString *ans1;
@property (nonatomic, strong) NSString *ans2;
@property (nonatomic, strong) NSString *ans3;

@end

@implementation Quiz

-(id)initWithQuiz:(NSString *)plistName {

    if ((self = [super init])) {
        NSString *plistCatPath = [[NSBundle mainBundle] pathForResource:plistName ofType:@"plist"];
        self.movieArray = [NSMutableArray arrayWithContentsOfFile:plistCatPath];
        self.quizCount = [self.movieArray count];
        NSLog(@"QUiz Count - %d", self.quizCount);
        self.tipCount = 0;
    }
    return self;
}

-(void) nextQuestion: (NSUInteger) idx {

    self.quote = [NSString stringWithFormat:@"'%@'", self.movieArray[idx][@"quote"]];
    self.ans1 = self.movieArray[idx][@"ans1"];
    self.ans2 = self.movieArray[idx][@"ans2"];
    self.ans3 = self.movieArray[idx][@"ans3"];
    self.tip = self.movieArray[idx][@"tip"];
    
    //If you are just starting the quiz
    if (idx == 0) {
        self.correctCount = 0;
        self.incorrectCount = 0;
        self.tipCount = 0;
    }
    
}

-(BOOL) checkQuestion: (NSUInteger) question forAnswer: (NSUInteger) answer {

    NSString *correctAnswer = self.movieArray[question][@"answer"];
    if ([correctAnswer intValue] == answer) {
        self.correctCount++;
        return YES;
    } else {
        self.incorrectCount++;
        return NO;
    }
    
}

@end
