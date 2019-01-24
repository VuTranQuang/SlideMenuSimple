//
//  ViewController.swift
//  SlideMenuSimple
//
//  Created by Vũ on 1/3/19.
//  Copyright © 2019 Vũ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leftConstraint: NSLayoutConstraint!
    @IBOutlet weak var sideMenu: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickMenu(_ sender: Any) {
        UIView.animate(withDuration: 0.35) {
            self.leftConstraint.constant = -self.sideMenu.bounds.width
            self.view.layoutIfNeeded()
        }
        
        
    }
    @IBAction func onShowBack(_ sender: UIBarButtonItem) {
        UIView.animate(withDuration: 0.35) {
           self.leftConstraint.constant = self.sideMenu.bounds.minX
            self.view.layoutIfNeeded()
        }
    }
    
}

