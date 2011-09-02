//
//  FXAppDelegate.m
//  zazen
//
//  Created by Jaroslaw Szpilewski on 2/9/11.
//  Copyright (c) 2011 Flux Forge. All rights reserved.
//

#import "FXAppDelegate.h"
#define kGongInterval 60.0f

@interface FXAppDelegate ()
- (void) zazen: (id) something;
@end

@implementation FXAppDelegate {
	NSTimer *zazenTimer;
}

@synthesize window = _window;
@synthesize progressIndicator;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
	[progressIndicator setMinValue: 0.0];
	[progressIndicator setMaxValue: kGongInterval];
	[progressIndicator setDoubleValue: kGongInterval];
}


- (IBAction)startTimer:(id)sender {
	if (zazenTimer) 
		return;
	zazenTimer = [NSTimer scheduledTimerWithTimeInterval: 0.5f target: self selector: @selector(zazen:) userInfo: nil repeats: YES];
}

- (IBAction)stopTimer:(id)sender {
	[zazenTimer invalidate];
	zazenTimer = nil;
}

- (void) zazen: (id) something {
	if ([progressIndicator doubleValue] >= kGongInterval) {
		NSSound *snd = [NSSound soundNamed: @"normal.aif"];
		[snd stop];	//don't be retarded and set the interval < len(soundfile)
		[snd play];
		[progressIndicator setDoubleValue: 0.0];
	}

	[progressIndicator incrementBy: 0.5];
}


@end
