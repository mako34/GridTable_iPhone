//
//  gridTestAppDelegate.h
//  gridTest
//
//  Created by MK SS9 on 25/02/11.
//  Copyright 2011 Neo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class gridTestViewController;

@interface gridTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    gridTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet gridTestViewController *viewController;

@end

