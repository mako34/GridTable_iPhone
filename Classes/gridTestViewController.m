//
//  gridTestViewController.m
//  gridTest
//
//  Created by MK SS9 on 25/02/11.
//  Copyright 2011 Neo. All rights reserved.
//

#import "gridTestViewController.h"
#import "gridTestAppDelegate.h"

#import "MyTableCell.h"

@implementation gridTestViewController

#define LABEL_TAG 1
#define VALUE_TAG 2
#define FIRST_CELL_IDENTIFIER @"TrailItemCell"
#define SECOND_CELL_IDENTIFIER @"RegularCell"



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
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
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
	return 19;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	NSString *MyIdentifier = [NSString stringWithFormat:@"MyIdentifier %i", indexPath.row];
	
	MyTableCell *cell = (MyTableCell *)[tableView dequeueReusableCellWithIdentifier:MyIdentifier];
	
	if (cell == nil) {
		cell = [[[MyTableCell alloc] initWithFrame:CGRectZero reuseIdentifier:MyIdentifier] autorelease];
		
		UILabel *label = [[[UILabel	alloc] initWithFrame:CGRectMake(0.0, 0, 30.0, 
																	tableView.rowHeight)] autorelease]; 
		[cell addColumn:50];
		label.tag = LABEL_TAG; 
		label.font = [UIFont systemFontOfSize:12.0]; 
		label.text = [NSString stringWithFormat:@"%d", indexPath.row];
		label.textAlignment = UITextAlignmentRight; 
		label.textColor = [UIColor blueColor]; 
		label.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | 
		UIViewAutoresizingFlexibleHeight; 
		[cell.contentView addSubview:label]; 
		
		label =  [[[UILabel	alloc] initWithFrame:CGRectMake(60.0, 0, 30.0, 
															tableView.rowHeight)] autorelease]; 
		[cell addColumn:120];
		label.tag = VALUE_TAG; 
		label.font = [UIFont systemFontOfSize:12.0]; 
		// add some silly value
		label.text = [NSString stringWithFormat:@"%d", indexPath.row * 4];
		label.textAlignment = UITextAlignmentRight; 
		label.textColor = [UIColor blueColor]; 
		label.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | 
		UIViewAutoresizingFlexibleHeight; 
		[cell.contentView addSubview:label]; 
	}
	
	return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	// Navigation logic
}

- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
}

- (void)viewDidDisappear:(BOOL)animated {
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
