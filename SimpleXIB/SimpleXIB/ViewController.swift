//
//  ViewController.swift
//  SimpleXIB
//
//  Created by Don Mag on 8/7/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var theXIBView: XIBViewView?

	
	@IBAction func doChangeXIBLabel(_ sender: Any) {
		theXIBView?.setMeUp("Here's a new string!")
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		if let xibView = Bundle.main.loadNibNamed("XIBView", owner: nil, options: nil)?.first as? XIBViewView {
			
			xibView.finishSetup()
			
			xibView.translatesAutoresizingMaskIntoConstraints = false
			
			self.view.addSubview(xibView)
			
			xibView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
			xibView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
			
			xibView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9).isActive = true
			xibView.heightAnchor.constraint(equalTo: xibView.widthAnchor, multiplier: 0.5).isActive = true
			
			self.theXIBView = xibView
			
		}
		
	}


}

