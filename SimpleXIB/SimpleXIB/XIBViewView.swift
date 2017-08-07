//
//  XIBViewView.swift
//  SimpleXIB
//
//  Created by Don Mag on 8/7/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class XIBViewView: UIView {

	@IBOutlet weak var theLabel: UILabel!
	
	var myString = "Testing"
	
	// when class is instantiated via code
	override init(frame: CGRect) {
		super.init(frame: frame)
		commonInit()
	}
	
	// when class is instantiated in a Storyboard
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		commonInit()
	}
	
	func commonInit() -> Void {
		print("myString during init:", self.myString)
	}

	open func finishSetup() -> Void {
		
		self.theLabel.text = myString
		
	}

	open func setMeUp(_ value: String) -> Void {
		
		self.myString = value
		
		print("myString after setMeUp:", self.myString)
		
		self.theLabel.text = myString
		
	}
	
}
