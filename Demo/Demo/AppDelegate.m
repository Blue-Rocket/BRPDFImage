//
//  AppDelegate.m
//  Demo
//
//  Created by Matt on 12/5/13.
//  Copyright (c) 2013 Blue Rocket, Inc. All rights reserved.
//

#import "AppDelegate.h"

#import "SimpleIconViewController.h"
#import "TableIconViewController.h"

@implementation AppDelegate {
	UIViewController *rootViewController;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	
	if ( [UIViewController instancesRespondToSelector:@selector(shouldAutomaticallyForwardAppearanceMethods)]) {
		// iOS 6+
		rootViewController = [[SimpleIconViewController alloc] initWithNibName:@"SimpleIconViewController" bundle:nil];
	} else {
		// iOS <6
		rootViewController = [[TableIconViewController alloc] initWithNibName:@"TableIconViewController" bundle:nil];
	}
	self.window.rootViewController = rootViewController;
	self.window.backgroundColor = [UIColor whiteColor];
	[self.window makeKeyAndVisible];
	return YES;
}

@end
