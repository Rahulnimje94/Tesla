//
//  ResponsiveCollectionViewController.swift
//  Practice_again
//
//  Created by Anand on 21/12/17.
//  Copyright © 2017 Rahul. All rights reserved.
//

import UIKit

class ResponsiveCollectionViewController: BaseClass {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var okTakeMeBack: UIButton! {
        didSet {
            self.okTakeMeBack.layer.cornerRadius = 10
        }
    }
    
    let TeslaCars = ["tesla", "tesla2013", "tesla2015", "Tesla-Model-S", "tesla roadster", "Tesla-Roadster", "Tesla-Roadster1", "red_models", "RedBay", "Red_Profile"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func okTakeMeBackButten(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCollection" {
            if let indexPath = collectionView?.indexPath(for: sender as! TeslaCollectionCell) {
                let controller = segue.destination as! ShowFullImg
                guard let imageSelected = UIImage(named: TeslaCars[indexPath.item]) else {
                    return
                    
                }
                controller.getImage = imageSelected
            }
            
        }
    }
    
    
}

extension ResponsiveCollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return TeslaCars.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! TeslaCollectionCell

        cell.CollectionImage.image = UIImage(named: TeslaCars[indexPath.row])
        
        
        return cell
    }

}


extension ResponsiveCollectionViewController: UICollectionViewDelegateFlowLayout{
    
    // MARK: - UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectionView.bounds.width;
        var itemWidth = collectionWidth / 2 - 1;
        
        if(UI_USER_INTERFACE_IDIOM() == .pad) {
            itemWidth = collectionWidth / 4 - 1;
        }
        return CGSize(width: itemWidth, height: itemWidth);
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
}





















