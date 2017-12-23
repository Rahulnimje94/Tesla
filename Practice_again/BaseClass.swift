//
//  BaseClass.swift
//  Practice_again
//
//  Created by Anand on 22/12/17.
//  Copyright © 2017 Rahul. All rights reserved.
//

import UIKit

//Mark: BaseClass is the Master or Parent Class 

class BaseClass: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Make: For Transparant Navigation Bar
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
    }
    
}
