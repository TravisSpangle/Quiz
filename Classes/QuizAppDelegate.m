//
//  QuizAppDelegate.m
//  Quiz
//
//  Created by Travis Spangle on 12/27/10.
//  Copyright 2010 Peak Systems. All rights reserved.
//

#import "QuizAppDelegate.h"

@implementation QuizAppDelegate

@synthesize window;

- (id)init
{
	//call the init method implemented by the superclass
	[super init];
	
	//Create two arrays and make the pointers point to them
	questions = [[NSMutableArray alloc] init];
	answers = [[NSMutableArray alloc] init];
	
	//Add questions and answers to the arrays
	[questions addObject:@"What is 7 + 7?"];
	[answers addObject:@"14"];
	
	[questions addObject:@"What is the capital of Vermont?"];
	[answers addObject:@"Montpelier"];
	
	[questions addObject:@"From what is cognac made?"];
	[answers addObject:@"Grapes"];
	
	//Return the address of the new object
	return self;
}

- (IBAction)showQuestion:(id)sender
{
	//Setp to the next question - just to keep things simple
	//to focus on the iOS elements of the programming, 
	//we will start with the "second" quesion in the list.
	
	currentQuestionIndex++;
	
	//Am I past the last question?
	if (currentQuestionIndex == [questions count]) {
		//Go back to the first question
		currentQuestionIndex = 0;
	}
	
	//Get the string at that index in the questions array
	NSString *question = [questions objectAtIndex:currentQuestionIndex];
	
	//Log the string to the console
	NSLog(@"displaying question: %@", question);
	
	//Display the string in teh question field
	[questionField setText:question];
	
	//Clear the answer field
	[answerField setText:@"??"];
}

- (IBAction)showAnswer:(id)sender
{
	//What is the answer to the current question?
	NSString *answer = [answers objectAtIndex:currentQuestionIndex];
	
	// Display it in the answer field
	[answerField setText:answer];
}
	
	
#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
