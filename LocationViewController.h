//
//  RootViewController.h
//  ZipCodeTable
//
//  Created by Tim Tran on 5/4/11.
//  Copyright 2011 George Mason University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZipCode.h"
#import "ZipCodeEditorViewController.h"

@interface LocationViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>{
	
	NSMutableArray *zipcodeArray;
	ZipCodeEditorViewController *ZipCodeEditor;
	ZipCode *editingZipCode;
}


@property(nonatomic, retain)NSMutableArray *zipcodeArray;
@property(nonatomic, retain) ZipCodeEditorViewController *ZipCodeEditor;
@property(nonatomic, retain)ZipCode *editingZipCode;

-(IBAction) handleAddTapped;

@end
