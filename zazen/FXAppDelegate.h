//
//  FXAppDelegate.h
//  zazen
//
//  Created by Jaroslaw Szpilewski on 2/9/11.
//  Copyright (c) 2011 Flux Forge. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface FXAppDelegate : NSObject <NSApplicationDelegate>

@property (strong) IBOutlet NSWindow *window;
@property (strong) IBOutlet NSProgressIndicator *progressIndicator;

- (IBAction)startTimer:(id)sender;
- (IBAction)stopTimer:(id)sender;

@end
