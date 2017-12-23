//
//  ResponsiveSizeViewController.swift
//  Practice_again
//
//  Created by Anand on 21/12/17.
//  Copyright © 2017 Rahul. All rights reserved.
//

import UIKit

class ResponsiveSizeViewController: UIViewController {

    @IBOutlet weak var niceWhatElseButten: UIButton!
        {
        didSet {
            self.niceWhatElseButten.layer.cornerRadius = 10
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func niceWhatElseButten(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    
}
