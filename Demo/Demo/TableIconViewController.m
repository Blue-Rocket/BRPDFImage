//
//  TableIconViewController.m
//  Demo
//
//  Created by Matt on 12/5/13.
//  Copyright (c) 2013 Blue Rocket, Inc. Distributable under the terms of the Apache License, Version 2.0.
//

#import "TableIconViewController.h"

#import "BRPDFImage.h"
#import "TableIconCell.h"
#import "BRPDFImage+Demo.h"

static NSString * const kCellIdentifier = @"IconCell";

@implementation TableIconViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
	return YES;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 1000;
}

- (TableIconCell *)createTableIconCell {
	TableIconCell *cell = nil;
	[[NSBundle mainBundle] loadNibNamed:@"TableIconCell" owner:self options:nil];
	cell = self.cell;
	self.cell = nil;
	return cell;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	TableIconCell *cell = (TableIconCell *)[tableView dequeueReusableCellWithIdentifier:kCellIdentifier];
	if ( cell == nil ) {
		cell = [self createTableIconCell];
	}
	
	cell.leftIcon.image = [BRPDFImage randomIcon];
	cell.rightIcon.image = [BRPDFImage randomIcon];
	
	return cell;
}

@end
