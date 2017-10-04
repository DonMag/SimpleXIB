//
//  ViewController.m
//  OCSimpleXIB
//
//  Created by Don Mag on 10/4/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

#import "ViewController.h"

#import "OrangeView.h"
#import "GreenView.h"

@interface ViewController () {
	OrangeView *ov;
	GreenView *gv;
}

@property (weak, nonatomic) IBOutlet UIView *viewOrange;
@property (weak, nonatomic) IBOutlet UIView *viewGreen;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	ov = [OrangeView new];
	gv = [GreenView new];
	
	ov.translatesAutoresizingMaskIntoConstraints = false;
	gv.translatesAutoresizingMaskIntoConstraints = false;
	
	[_viewOrange addSubview:ov];
	[_viewGreen addSubview:gv];

	[ov.topAnchor constraintEqualToAnchor:_viewOrange.topAnchor constant:0.0].active = YES;
	[ov.bottomAnchor constraintEqualToAnchor:_viewOrange.bottomAnchor constant:0.0].active = YES;
	[ov.leadingAnchor constraintEqualToAnchor:_viewOrange.leadingAnchor constant:0.0].active = YES;
	[ov.trailingAnchor constraintEqualToAnchor:_viewOrange.trailingAnchor constant:0.0].active = YES;
	
	[gv.topAnchor constraintEqualToAnchor:_viewGreen.topAnchor constant:0.0].active = YES;
	[gv.bottomAnchor constraintEqualToAnchor:_viewGreen.bottomAnchor constant:0.0].active = YES;
	[gv.leadingAnchor constraintEqualToAnchor:_viewGreen.leadingAnchor constant:0.0].active = YES;
	[gv.trailingAnchor constraintEqualToAnchor:_viewGreen.trailingAnchor constant:0.0].active = YES;
	
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
