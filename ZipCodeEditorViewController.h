//
//  ZipCodeEditorViewController.h
//  ZipCode
//
//  Created by Tim Tran on 5/4/11.
//  Copyright 2011 George Mason University. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZipCode;



@interface ZipCodeEditorViewController : UIViewController <UITextFieldDelegate> {
	
	UITextField *nameField;
	UITextField *zipcodeField;
	ZipCode *zipcode;
	

}

@property(nonatomic, retain) IBOutlet UITextField *nameField;
@property(nonatomic, retain) IBOutlet UITextField *zipcodeField;
@property(nonatomic, retain) ZipCode *zipcode;


-(IBAction)done;

@end
