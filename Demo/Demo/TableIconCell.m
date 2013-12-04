//
//  TableIconCell.m
//  Demo
//
//  Created by Matt on 12/5/13.
//  Copyright (c) 2013 Blue Rocket, Inc. All rights reserved.
//

#import "TableIconCell.h"

@implementation TableIconCell

- (void)layoutSubviews {
	[super layoutSubviews];
	const CGPoint center = CGPointMake(CGRectGetMidX(self.contentView.bounds), CGRectGetMidY(self.contentView.bounds));
	self.leftIcon.center = CGPointMake(center.x - CGRectGetWidth(self.leftIcon.bounds) * 0.5 - 5, center.y);
	self.rightIcon.center = CGPointMake(center.x + CGRectGetWidth(self.rightIcon.bounds) * 0.5 + 5, center.y);
}

@end
