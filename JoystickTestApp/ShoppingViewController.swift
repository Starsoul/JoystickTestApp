//
//  ShoppingViewController.swift
//  car_viewController
//
//  Created by WenTing on 2017/11/13.
//  Copyright © 2017年 WenTing. All rights reserved.
//

import UIKit

class ShoppingViewController: UIViewController {
// not yet
    @IBOutlet weak var shoppingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       //not yet
        shoppingButton.layer.cornerRadius = shoppingButton.frame.size.width / 2
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
