//
//  RootViewController.h
//  Weather_Map
//
//  DREAM 
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@class LocationViewController;
@class ForecastViewController;

@interface MapViewController : UIViewController <MKMapViewDelegate> {
	IBOutlet UIButton *edit;
	IBOutlet MKMapView *mapView;
	LocationViewController *locViewController;
	ForecastViewController *forecViewController;
	
	
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@property (nonatomic, retain) IBOutlet LocationViewController *locViewController;
@property (nonatomic, retain) IBOutlet ForecastViewController *forecViewController;


- (IBAction) handleAddTapped;
@end