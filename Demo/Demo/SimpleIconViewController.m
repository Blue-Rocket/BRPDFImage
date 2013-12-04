//
//  SimpleIconViewController.m
//  BRPDFImageDemo
//
//  Created by Matt on 12/4/13.
//  Copyright (c) 2013 Blue Rocket, Inc. All rights reserved.
//

#import "SimpleIconViewController.h"

#import "BRPDFImage.h"
#import "SimpleIconCell.h"
#import "BRPDFImage+Demo.h"

static NSString * const kCellIdentifier = @"IconCell";

@implementation SimpleIconViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[self.collectionView registerNib:[UINib nibWithNibName:@"SimpleIconCell" bundle:nil] forCellWithReuseIdentifier:kCellIdentifier];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
	return YES;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
	return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
	return 1000;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
	SimpleIconCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCellIdentifier forIndexPath:indexPath];
	cell.iconView.image = [BRPDFImage randomIcon];
	return cell;
}

@end
