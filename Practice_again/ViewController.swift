//
//  ViewController.swift
//  Practice_again
//
//  Created by Anand on 20/12/17.
//  Copyright © 2017 Rahul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leadingF: NSLayoutConstraint!
    @IBOutlet weak var trailingF: NSLayoutConstraint!
    
    @IBOutlet weak var ubeView: UIView!
    
    var hamburgerMenuIsVisible = false
    
    @IBAction func hamburgerBtnTapped(_ sender: Any) {
        if !hamburgerMenuIsVisible {
            leadingF.constant = 200
            trailingF.constant = -200
            
            hamburgerMenuIsVisible = true
        } else {
            leadingF.constant = 0
            trailingF.constant = 0
            
            hamburgerMenuIsVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: { 
            self.view.layoutIfNeeded()
        }) { _ in
            print("The animation is complete!")
        }
    }
    

    override func viewDidLoad() {
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Hide the navigation bar on the this view controller
//        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    
   
}

