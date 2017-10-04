//
//  XIBViewBase.m
//  OCSimpleXIB
//
//  Created by Don Mag on 10/4/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import "XIBViewBase.h"

@implementation XIBViewBase

- (id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	
	if (self) {
		[self xibSetup];
	}
	
	return self;
}

- (id)initWithCoder:(NSCoder *)coder
{
	self = [super initWithCoder:coder];
	
	if (self) {
		[self xibSetup];
	}
	
	return self;
}

- (void)awakeFromNib {
	[super awakeFromNib];
	[self xibSetup];
}

- (void)xibSetup {
	
	// make sure we don't add the subviews more than once
	if (!self.subviews.count) {
		
		UIView *view = [self loadFromXIB];
		
		view.frame = self.bounds;
		view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
		
		[self addSubview:view];
		[self sendSubviewToBack:view];
		
	}
	
}

- (UIView *)loadFromXIB {
	
	// Note: the .xib file MUST be named the same as the class for this to work
	
	NSString *className = NSStringFromClass([self class]);
	NSBundle *bundle = [NSBundle bundleForClass:[self class]];
	UINib *nib = [UINib nibWithNibName:className bundle:bundle];
	UIView *v = [nib instantiateWithOwner:self options:nil].firstObject;
	
	return v;
	
}

@end
