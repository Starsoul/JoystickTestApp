//
//  Intro3ViewController.swift
//  car_viewController
//
//  Created by WenTing on 2017/11/17.
//  Copyright © 2017年 WenTing. All rights reserved.
//

import UIKit

class Intro3ViewController: UIViewController {
//Page3
    @IBOutlet weak var introImageView3: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        var iphoneImage = ["iphone1","iphone2","iphone3","iphone4"]
        var images = [UIImage]()
        for i in 0..<iphoneImage.count{
            images.append(UIImage(named:iphoneImage[i])!)
            
            
        }
        introImageView3.animationImages = images
        introImageView3.animationDuration = 3.0
        introImageView3.startAnimating()
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
