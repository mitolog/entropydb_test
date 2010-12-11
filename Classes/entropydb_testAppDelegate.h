//
//  entropydb_testAppDelegate.h
//  entropydb_test
//
//  Created by Miyazato_Yuhei on 12/11/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EXContainer.h"
#import "entropydb_testViewController.h"

@class entropydb_testViewController;

@interface entropydb_testAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    entropydb_testViewController *viewController;
		EXContainer* container;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet entropydb_testViewController *viewController;

- (EXContainer*)container;

@end

