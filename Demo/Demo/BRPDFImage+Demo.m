//
//  BRPDFImage+Demo.m
//  Demo
//
//  Created by Matt on 12/5/13.
//  Copyright (c) 2013 Blue Rocket, Inc. All rights reserved.
//

#import "BRPDFImage+Demo.h"

static NSMutableDictionary *IconCache;

static const u_int32_t kNumIcons = 7;

@implementation BRPDFImage (Demo)

#define RandomColorComponent ((arc4random_uniform(52) * 5)/255.0)

+ (UIColor *)randomColor {
	return [UIColor colorWithRed:RandomColorComponent green:RandomColorComponent blue:RandomColorComponent alpha:1.0];
}

+ (BRPDFImage *)randomIcon {
	// Caching these random icons is not the best idea, but in a real application with a small set of known icons used frequently
	// caching can be very helpful, especially in things like collection/table views
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		IconCache = [[NSMutableDictionary alloc] initWithCapacity:64];
	});
	NSString *iconName = [NSString stringWithFormat:@"%u", arc4random_uniform(kNumIcons)];
	UIColor *iconColor = [self randomColor];
	CGFloat r, g, b;
	[iconColor getRed:&r green:&g blue:&b alpha:NULL];
	
	// although we limit the possible color components to just 51, we derive our cache key from just the last few bits
	// to limit the overall number of different icons we create (and thus cache in memory)
	NSString *cacheKey = [iconName stringByAppendingFormat:@":%d",
						  (((int)(r * 255.f) & 0xF) << 2
						   | (((int)(g * 255.f) & 0xF) << 1)
						   | (((int)(b * 255.f) & 0xF) << 0))];
	
	BRPDFImage *img = IconCache[cacheKey];
	if ( img == nil ) {
		img = [[BRPDFImage alloc] initWithURL:[[NSBundle mainBundle] URLForResource:iconName withExtension:@"pdf"]
								   pageNumber:1 renderSize:CGSizeMake(100,100)
							  backgroundColor:[UIColor clearColor] tintColor:iconColor];
		IconCache[cacheKey] = img;
	}
	return img;
}

@end
