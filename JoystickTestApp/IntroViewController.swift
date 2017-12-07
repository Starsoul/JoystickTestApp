//
//  IntroViewController.swift
//  car_viewController
//
//  Created by WenTing on 2017/11/12.
//  Copyright © 2017年 WenTing. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
//Page1
    @IBOutlet weak var introImageView1: UIImageView!
    
 @IBOutlet weak var missIntroButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        missIntroButton.layer.cornerRadius = missIntroButton.frame.size.width / 2
        var earthImage = ["earth1","earth2","earth3","earth4"]
        var images = [UIImage]()
        for i in 0..<earthImage.count{
            images.append(UIImage(named:earthImage[i])!)
        }
        introImageView1.animationImages = images
        introImageView1.animationDuration = 3.0
        introImageView1.startAnimating()
        
        
    }

//   @IBAction func missIntroVC(_ sender: Any) {
//        self.dismiss(animated: true, completion: nil)
//    }
//    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
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
