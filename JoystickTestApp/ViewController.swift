//
//  ViewController.swift
//  car_viewController
//
//  Created by WenTing on 2017/11/7.
//  Copyright © 2017年 WenTing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//SnooyView

    @IBOutlet weak var imageView: UIImageView!
    //@IBOutlet weak var slideMenuConstraint: NSLayoutConstraint!
    
  

    
    
    
//    var isSlideMenuHidden = true
//    @IBAction func menuControl(_ sender: UIBarButtonItem) {
//        if isSlideMenuHidden {
//            slideMenuConstraint.constant = 0
//        }else{
//            slideMenuConstraint.constant = -150
//        }
//        isSlideMenuHidden = !isSlideMenuHidden
//    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "前頁"
       //SlideMenu is initialize
       //slideMenuConstraint.constant = -150
       //UIimage_car
        var carImage = ["car1","car2","car3","car4","car5","car6",
                        "car7","car8","car9","car10","car11"]
        var images = [UIImage]()
        for i in 0..<carImage.count{
            images.append(UIImage(named:carImage[i])!)
        }
        
        imageView.animationImages = images
        imageView.animationDuration = 6.0
        imageView.startAnimating()
        
       
//        let segementedControl = UISegmentedControl (
//            items:[
//                "遙控車","視訊","影像","音樂"
//
//            ]
//        )
//        segementedControl.frame.size = CGSize(width:200, height:30)
//        segementedControl.selectedSegmentIndex = 2
//        self.navigationItem.titleView = segementedControl
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

