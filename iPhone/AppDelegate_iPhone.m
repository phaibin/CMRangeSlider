//
//  AppDelegate_iPhone.m
//  RangeSlider
//
//  Created by Charlie Mezak on 9/16/10.
//  Copyright 2010 Natural Guides, LLC. All rights reserved.
//

#import "AppDelegate_iPhone.h"
#import "RangeSlider.h"

@implementation AppDelegate_iPhone

@synthesize window;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
	
	slider = [[RangeSlider alloc] initWithFrame:CGRectMake(10, 100, 300, 30)];
	[slider setMinThumbImage:[UIImage imageNamed:@"sliderControl.png"]];
	[slider setMaxThumbImage:[UIImage imageNamed:@"sliderControl.png"]];
	UIImage *image;
	
	image = [UIImage imageNamed:@"subRangeTrack.png"];
	image = [image stretchableImageWithLeftCapWidth:image.size.width-2 topCapHeight:3];
	[slider setSubRangeTrackImage:image];
	
	image = [UIImage imageNamed:@"inRangeTrack.png"];
	[slider setInRangeTrackImage:image];
	
	image = [UIImage imageNamed:@"superRangeTrack.png"];
	image = [image stretchableImageWithLeftCapWidth:3 topCapHeight:0];
	[slider setSuperRangeTrackImage:image];
	
	[slider addTarget:self action:@selector(report:) forControlEvents:UIControlEventValueChanged];
    [window addSubview:slider];
    [window makeKeyAndVisible];
    
    return YES;
}

- (void)report:(RangeSlider *)sender {
	NSLog(@"current slider range is %f to %f", sender.min, sender.max);
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