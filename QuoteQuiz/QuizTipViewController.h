//
//  QuizTipViewController.h
//  QuoteQuiz
//
//  Created by Burak Firik on 7/14/12.
//  Copyright (c) 2012 Burak Firik. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol QuizTipViewControllerDelegate;

@interface QuizTipViewController : UIViewController

@property (nonatomic, assign) id <QuizTipViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextView * tipView;
@property (nonatomic, copy) NSString * tipText;

- (IBAction)doneAction:(id)sender;

@end

@protocol QuizTipViewControllerDelegate
- (void)quizTipDidFinish:(QuizTipViewController *)controller;
@end