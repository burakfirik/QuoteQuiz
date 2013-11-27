//
//  QuizTipViewController.m
//  QuoteQuiz
//
//  Created by Burak Firik on 7/14/12.
//  Copyright (c) 2012 Burak Firik. All rights reserved.
//

#import "QuizTipViewController.h"

@interface QuizTipViewController ()

@end

@implementation QuizTipViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.tipView.text = self.tipText;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneAction:(id)sender
{
    [self.delegate quizTipDidFinish:self];
}

@end
