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
#import "UIColor+Demo.h"

static NSString * const kCellIdentifier = @"IconCell";

@interface SimpleIconViewController ()

@end

@implementation SimpleIconViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[self.collectionView registerNib:[UINib nibWithNibName:@"SimpleIconCell" bundle:nil] forCellWithReuseIdentifier:kCellIdentifier];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
	return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
	return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
	SimpleIconCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCellIdentifier forIndexPath:indexPath];
	NSString *iconName = [NSString stringWithFormat:@"%u", arc4random_uniform(2)];
	BRPDFImage *img = [[BRPDFImage alloc] initWithURL:[[NSBundle mainBundle] URLForResource:iconName withExtension:@"pdf"]
										   pageNumber:1 renderSize:CGSizeMake(100,100)
									  backgroundColor:[UIColor clearColor] tintColor:[UIColor randomColor]];
	cell.iconView.image = img;
	return cell;
}

@end
