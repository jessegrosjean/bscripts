//
//  BScriptsController.m
//  BScripts
//
//  Created by Jesse Grosjean on 10/13/07.
//  Copyright 2007 __MyCompanyName__. All rights reserved.

#import "BScriptsController.h"
#import "CSMScriptMenu.h"


@implementation BScriptsController

#pragma mark Class Methods

+ (id)sharedInstance {
    static id sharedInstance = nil;
    if (sharedInstance == nil) {
        sharedInstance = [[self alloc] init];
    }
    return sharedInstance;
}

#pragma mark Lifecycle Callback

- (void)applicationDidFinishLaunching {
	[[CSMScriptMenu sharedMenuGenerator] updateScriptMenu];
}

@end
