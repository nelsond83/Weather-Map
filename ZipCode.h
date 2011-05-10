//
//  ZipCode.h
//  ZipCode
//
//  Created by Tim Tran on 5/4/11.
//  Copyright 2011 George Mason University. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ZipCode : NSObject {
	NSString *name;
	NSNumber *zipcodenum;

}

-(id)initWithName:(NSString *)newName
		  zipcodenum:(NSNumber *)newZipcode;

@property(nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSNumber *zipcodenum;

@end
