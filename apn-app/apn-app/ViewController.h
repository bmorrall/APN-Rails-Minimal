//
//  ViewController.h
//  apn-app
//
//  Created by Benjamin Morrall on 24/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    UITextView *textView;
}

@property(retain) IBOutlet UITextView *textView;

- (void)notificationReceived:(NSNotification*)notification;

@end
