//
//  Intro2ViewController.swift
//  car_viewController
//
//  Created by WenTing on 2017/11/17.
//  Copyright © 2017年 WenTing. All rights reserved.
//

import UIKit

class Intro2ViewController: UIViewController {
//Page2
    @IBOutlet weak var introImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

       var iotImage = ["iot1","iot2"]
       var images = [UIImage]()
        for i in 0 ..< iotImage.count{
            images.append(UIImage(named:iotImage[i])!)
            
            
        }
       introImageView2.animationImages = images
       introImageView2.animationDuration = 3.0
       introImageView2.startAnimating()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
