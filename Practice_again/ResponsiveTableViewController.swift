//
//  ResponsiveTableViewController.swift
//  Practice_again
//
//  Created by Anand on 21/12/17.
//  Copyright © 2017 Rahul. All rights reserved.
//

import UIKit

class ResponsiveTableViewController: BaseClass {

    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var enoughOfTablebutten: UIButton! {
        didSet {
            self.enoughOfTablebutten.layer.cornerRadius = 10
        }
    }

    let teslaCars = [["name":"Tesla Model", "image":"tesla"], ["name":"Tesla 2013", "image":"tesla2013"], ["name":"Tesla 2015", "image":"tesla2015"], ["name":"Tesla Model S", "image":"Tesla-Model-S"], ["name":"Tesla Roadster", "image":"tesla roadster"], ["name":"Tesla Roadster 2", "image":"Tesla-Roadster"], ["name":"Tesla Roadster 1", "image":"Tesla-Roadster1"],["name":"Red models", "image":"red_models"], ["name":"RedBay", "image":"RedBay"], ["name":"Red Profile", "image":"Red_Profile"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
  
    @IBAction func enoughOfTableButten(_ sender: Any) {
       _ = self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showTable" {
            if let indexPath = tableView?.indexPath(for: sender as! TeslaTableCell) {
                let controller = segue.destination as! ShowFullImg
                
                let dic = teslaCars[indexPath.row]
                
                guard let carImage = dic["image"] else {
                    return
                }

                guard let imageSelected1 = UIImage(named: carImage) else {
                    return
                    
                }
                controller.getImage = imageSelected1
            }
            
        }
    }

}

extension ResponsiveTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teslaCars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TeslaTableCell
        
        let dic = teslaCars[indexPath.row]
        
        guard let carImage = dic["image"],
            let name = dic["name"] else {
                return cell
        }

        
        cell.tableImg.image = UIImage(named: carImage)
        cell.nameLbl.text = name
        
        
        return cell
    }
    

}
