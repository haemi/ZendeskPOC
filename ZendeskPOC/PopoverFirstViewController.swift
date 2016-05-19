//
//  PopoverFirstViewController.swift
//  ZendeskPOC
//
//  Created by Stefan Walkner on 19.05.16.
//  Copyright © 2016 arkulpa GmbH. All rights reserved.
//

import UIKit

class PopoverFirstViewController: UIViewController {
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.whiteColor()
        
        let button = UIButton(frame: CGRectZero)
        button.setTitle("Click Me As Well", forState: .Normal)
        button.clipsToBounds = true
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button.addTarget(self, action: #selector(buttonClicked), forControlEvents: .TouchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(button)
        NSLayoutConstraint(item: button, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1, constant: 0).active = true
        NSLayoutConstraint(item: button, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1, constant: 0).active = true
    }
    
    func buttonClicked() {
        ZDKRequests.showRequestListWithNavController(self.navigationController)
    }
}
