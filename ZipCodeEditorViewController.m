    //
//  ZipCodeEditorViewController.m
//  ZipCode
//
//  Created by Tim Tran on 5/4/11.
//  Copyright 2011 George Mason University. All rights reserved.
//

#import "ZipCodeEditorViewController.h"
#import "ZipCode.h"


@implementation ZipCodeEditorViewController

@synthesize nameField;
@synthesize zipcodeField;
@synthesize zipcode;



-(void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	self.nameField.text = self.zipcode.name;
	NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
	[formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
	self.zipcodeField.text =
	[formatter stringFromNumber:self.zipcode.zipcodenum];
	[formatter release];
}

/*
-(IBAction)done {
	[[self parentViewController] dismissModalViewControllerAnimated:YES];
}

*/


-(IBAction)done {
	[self.navigationController popViewControllerAnimated:YES];
}
 
 
 
 

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
	[textField resignFirstResponder];
	return YES;
}



-(void)textFieldDidEndEditing:(UITextField *)textField {
	if(textField == self.nameField) {
		self.zipcode.name = self.nameField.text;
	} else if(textField == self.zipcodeField) {
		NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
		[formatter setNumberStyle:NSNumberFormatterDecimalStyle];
		self.zipcode.zipcodenum = 
		[formatter numberFromString:self.zipcodeField.text];
		[formatter release];
	} 
}

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
