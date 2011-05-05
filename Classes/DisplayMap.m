//
//  DisplayMap.m
//  Mapper
//
//  Created by Taylor Jones on 5/4/11.
//  Copyright 2011 George Mason University. All rights reserved.
//

#import "DisplayMap.h"


@implementation DisplayMap
@synthesize coordinate, title, subtitle;

-(void)dealloc{
	[title release];
	[super dealloc];
}
@end
