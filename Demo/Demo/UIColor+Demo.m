//
//  UIColor+Demo.m
//  Demo
//
//  Created by Matt on 12/5/13.
//  Copyright (c) 2013 Blue Rocket, Inc. All rights reserved.
//

#import "UIColor+Demo.h"

@implementation UIColor (Demo)

#define RandomColorComponent ((arc4random_uniform(52) * 5)/255.0)

+ (UIColor *)randomColor {
	return [UIColor colorWithRed:RandomColorComponent green:RandomColorComponent blue:RandomColorComponent alpha:1.0];
}

@end
