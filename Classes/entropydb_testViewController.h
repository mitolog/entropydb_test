//
//  entropydb_testViewController.h
//  entropydb_test
//
//  Created by Miyazato_Yuhei on 12/11/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EXContainer.h"
#import "CustomObject.h"

@interface entropydb_testViewController : UIViewController {
	UIButton* btn;
	UIButton* syncBtn;
	EXContainer* container;
}
@property (nonatomic, retain)UIButton* btn;
@property (nonatomic, retain)UIButton* syncBtn;
@end

