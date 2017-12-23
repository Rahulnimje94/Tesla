//
//  ShowTable.swift
//  Practice_again
//
//  Created by Anand on 22/12/17.
//  Copyright © 2017 Rahul. All rights reserved.
//

import UIKit

class ShowFullImg: BaseClass, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var getImage : UIImage?
    
    @IBOutlet weak var fullImg: UIImageView! {
            didSet {
                fullImg.image = getImage
            }
        }
        

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // scrollView.delegate = self - it is set on the storyboard.
        
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 6.0
    }

    //Mark: For Zooming Image
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        return fullImg
    }
    
    
}








