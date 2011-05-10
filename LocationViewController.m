//
//  RootViewController.m
//  ZipCodeTable
//
//  Created by Tim Tran on 5/4/11.
//  Copyright 2011 George Mason University. All rights reserved.
//

#import "LocationViewController.h"
#import "ZipCodeEditorViewController.h"


@implementation LocationViewController

@synthesize zipcodeArray;
@synthesize ZipCodeEditor;
@synthesize editingZipCode;


#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
	zipcodeArray = [[NSMutableArray alloc] init];
	ZipCode *aZipCode = [[ZipCode alloc] init];
	aZipCode.name = @"Woodbridge";
	aZipCode.zipcodenum = [NSNumber numberWithInt: 2342432432];
	[zipcodeArray addObject: aZipCode];
	[aZipCode release];
	
	
	
}


-(IBAction) handleAddTapped {
	
	ZipCode *newZipCode = [[ZipCode alloc] init];
	editingZipCode = newZipCode;
	ZipCodeEditor.zipcode = editingZipCode;
	[self.navigationController pushViewController:ZipCodeEditor animated:YES];
	
	[zipcodeArray addObject: newZipCode];
	NSIndexPath *newZipCodePath =
	[NSIndexPath indexPathForRow: [zipcodeArray count]-1 inSection:0];
	NSArray *newZipCodePaths = [NSArray arrayWithObject:newZipCodePath];
	[self.tableView insertRowsAtIndexPaths:newZipCodePaths withRowAnimation:NO];
	[newZipCode release];
}
	



		

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.





- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
	if (editingZipCode) {
		NSIndexPath *updatedPath = [NSIndexPath
									indexPathForRow: [zipcodeArray indexOfObject:editingZipCode]
									inSection: 0];
		NSArray *updatedPaths = [NSArray arrayWithObject:updatedPath];
		[self.tableView reloadRowsAtIndexPaths:updatedPaths
							  withRowAnimation:NO];
		editingZipCode = nil;
	}
}

/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/

/*
 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 */


#pragma mark -
#pragma mark Table view data source

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
    return [zipcodeArray count];
}


// Customize the appearance of table view cells.







- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Configure the cell.
	

	
	
	
	ZipCode *aZipCode = [zipcodeArray objectAtIndex:indexPath.row];
	UILabel *nameLabel = cell.textLabel;
	nameLabel.text = aZipCode.name;
	cell.textLabel.text = aZipCode.name;
	
	
	
	UILabel *zipcodeLabel = cell.detailTextLabel;
	zipcodeLabel.text = [NSString stringWithFormat:@"%@",
						 aZipCode.zipcodenum];
	


    return cell;
}

// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}




// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView 
 commitEditingStyle:(UITableViewCellEditingStyle)editingStyle 
forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
		
		[zipcodeArray removeObjectAtIndex: indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   

    }   




/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	
	editingZipCode = [zipcodeArray objectAtIndex:indexPath.row];
	ZipCodeEditor.zipcode = editingZipCode;
	[self.navigationController pushViewController:ZipCodeEditor animated:YES];

    
	/*
	 <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
	 [self.navigationController pushViewController:detailViewController animated:YES];
	 [detailViewController release];
	 */
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

