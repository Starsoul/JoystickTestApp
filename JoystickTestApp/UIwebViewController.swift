//
//  UIwebViewController.swift
//  car_viewController
//
//  Created by WenTing on 2017/11/20.
//  Copyright © 2017年 WenTing. All rights reserved.
//

import UIKit

class UIwebViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    var url : String?
    override func viewDidLoad() {
        super.viewDidLoad()
      webView.loadRequest(URLRequest(url:URL(string:url!)!))
       
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
