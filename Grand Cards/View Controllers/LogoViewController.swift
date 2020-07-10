//
//  LogoViewController.swift
//  Grand Cards
//
//  Created by Allen Benjamin on 7/9/20.
//  Copyright © 2020 sinclustoapps. All rights reserved.
//

import UIKit

class LogoViewController: UIViewController {
	@IBOutlet weak var imageView: UIImageView!
	@IBOutlet weak var verticalCenter: NSLayoutConstraint!
	@IBOutlet var containerView: UIView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		verticalCenter.constant = containerView.bounds.height / 2 + imageView.bounds.height / 2
		containerView.setNeedsLayout()
		containerView.layoutIfNeeded()
		
		UIView.animate(withDuration: 1, delay: 1, options: .curveEaseOut, animations: {
			self.verticalCenter.constant = 0
			self.containerView.setNeedsLayout()
			self.containerView.layoutIfNeeded()
		}) { (parameter) in
			UIView.animate(withDuration: 1, delay: 1, options: .curveEaseIn, animations: {
				self.verticalCenter.constant = self.containerView.bounds.height / -2 - self.containerView.bounds.height / 2
				self.containerView.setNeedsLayout()
				self.containerView.layoutIfNeeded()
			}) { (parameter) in
				// TODO: Go to next screen
			}
		}
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
