//
//  RootViewController.h
//  Weather_Map
//
//  Created by Nelson DaSilva on 4/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface RootViewController : UIViewController <MKMapViewDelegate> {
	IBOutlet UIButton *edit;
	IBOutlet MKMapView *mapView;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;

@end