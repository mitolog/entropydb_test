//
//  entropydb_testViewController.m
//  entropydb_test
//
//  Created by Miyazato_Yuhei on 12/11/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "entropydb_testViewController.h"
#import "entropydb_testAppDelegate.h"

@implementation entropydb_testViewController
@synthesize btn;
@synthesize syncBtn;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
	
	entropydb_testAppDelegate* delegate = [UIApplication sharedApplication].delegate;
	container = [delegate container];

	//make addItem button
	self.btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];	//retain once
	[btn setFrame:CGRectMake(10, 10, 300, 44)];
	[btn setTitle:@"addItem" forState:UIControlStateNormal];
	[btn addTarget:self action:@selector(addItem:) forControlEvents:UIControlEventTouchUpInside];

	//make sync button
	self.syncBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];	//retain once
	[btn setFrame:CGRectMake(10, 64, 300, 44)];
	[btn setTitle:@"sync" forState:UIControlStateNormal];
	[btn addTarget:self action:@selector(addItem:) forControlEvents:UIControlEventTouchUpInside];
	
}

- (void)addItem:(id)sender {
	CustomObject* customObject = [[CustomObject alloc] initWithText: @"Entropy Sample" number: random()];
	[container storeObject: customObject];
	[customObject release];
}

- (void)sync:(id)sender {
	if ([container synchronizeWithPort: 8899 host: @"127.0.0.1"] == NO) {
		UIAlertView* alert = [[UIAlertView alloc] initWithTitle: @"Sync error" message: @"Cannot connect to the server" delegate: nil cancelButtonTitle: @"OK" otherButtonTitles: nil];
		[alert show];
		[alert release];
	} else {
		UIAlertView* alert = [[UIAlertView alloc] initWithTitle: @"Sync" message: @"Completed" delegate: nil cancelButtonTitle: @"OK" otherButtonTitles: nil];
		[alert show];
		[alert release];
	}
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
