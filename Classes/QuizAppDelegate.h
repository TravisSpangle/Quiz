//
//  QuizAppDelegate.h
//  Quiz
//
//  Created by Travis Spangle on 12/27/10.
//  Copyright 2010 Peak Systems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizAppDelegate : NSObject <UIApplicationDelegate> {
	int currentQuestionIndex;
	
	//The model Objects
	NSMutableArray *questions;
	NSMutableArray *answers;
	
	//The view objects
	IBOutlet UILabel *questionField;
	IBOutlet UILabel *answerField;
	
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end

