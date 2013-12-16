//
//  QuoteQuizViewController.h
//  QuoteQuiz
//
//  Created by Burak Firik on 7/14/12.
//  Copyright (c) 2012 Burak Firik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuizTipViewController.h"
// EMail SMS lib
#import <MessageUI/MFMailComposeViewController.h>
#import <MessageUI/MessageUI.h>
#import <QuartzCore/QuartzCore.h>

@class Quiz;

@interface QuoteQuizViewController : UIViewController <QuizTipViewControllerDelegate, MFMailComposeViewControllerDelegate>

@property (nonatomic, assign) NSInteger quizIndex;
@property (nonatomic, strong) NSString *grade;
@property (nonatomic, strong) Quiz *quiz;
@property (nonatomic , strong) IBOutlet UIView *popupView;
-(IBAction)ans1Action:(id)sender;
-(IBAction)ans2Action:(id)sender;
-(IBAction)ans3Action:(id)sender;
-(IBAction)startAgain:(id)sender;
-(IBAction)finishButtonTouched:(UIButton *)sender;
- (IBAction)emailResult:(UIButton *)sender;
- (IBAction)closeButtonTouched:(UIButton *)sender;

@end
