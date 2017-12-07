//
//  ViewController2.swift
//  car_viewController
//
//  Created by WenTing on 2017/11/7.
//  Copyright © 2017年 WenTing. All rights reserved.
//

import UIKit

class ViewController2: UIViewController{
//index
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var shoppingButton: UIButton!
    
    @IBOutlet weak var carButton: UIButton!
    @IBOutlet weak var introButton: UIButton!
    //let transition = CircularTransition()
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MenuCircularTransition
        introButton.layer.cornerRadius = introButton.frame.size.width / 2
        carButton.layer.cornerRadius = carButton.frame.size.width / 2
        shoppingButton.layer.cornerRadius = shoppingButton.frame.size.width / 2
        messageButton.layer.cornerRadius = messageButton.frame.size.width / 2
        
        
        
        
        //imageView_snoopCar
        var snoop = ["Sp1","Sp2","Sp3","Sp4"]
        var images = [UIImage]()
        for i in 0..<snoop.count{
            images.append(UIImage(named:snoop[i])!)
        }
        
        imageView.animationImages = images
        imageView.animationDuration = 3.0
        imageView.startAnimating()
        // Do any additional setup after loading the view.
        
        // 修改表頭
        self.title = "首頁"
        
        // 客制化返回鍵
//        var backImg: UIImage = UIImage(named: "icons8-christmas-star.png")!
//        backImg = backImg.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
//        let newBackButton = UIBarButtonItem(image: backImg, style: UIBarButtonItemStyle.plain, target: self, action:  #selector(back))
//        self.navigationItem.leftBarButtonItem = newBackButton;

        // 客制化右邊的按鍵
//        var QRCodeImg: UIImage = UIImage(named: "qr- code32x32.png")!
//        QRCodeImg = QRCodeImg.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
//        let QRCodeButton = UIBarButtonItem(image: QRCodeImg, style: UIBarButtonItemStyle.plain, target: self, action: #selector(QRCode))
//
        // 客制化右邊的按鍵
//        var scheduleImg: UIImage = UIImage(named: "Add_Calendar.png")!
//        scheduleImg = scheduleImg.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
//        let scheduleButton = UIBarButtonItem(image: scheduleImg, style: UIBarButtonItemStyle.plain, target: self, action: #selector(ScheduleRecord))
//
        // 建立一個空白按鍵，只來拿來做為隔開二個按鍵間
//        let negativeSpace:UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.fixedSpace, target: nil, action: nil)
//        negativeSpace.width = -35.0
//
        
        // 將上述三個按鍵加入導覽列的右邊
//        self.navigationItem.rightBarButtonItems = [QRCodeButton,negativeSpace,scheduleButton]
//    }
//
//    @objc func back(sender: UIBarButtonItem){
//        print("返回")
//        self.navigationController?.popViewController(animated: true)
//    }
//
//    @objc func QRCode(sender: UIBarButtonItem){
//        print("掃描")
//    }
    
//    @objc func ScheduleRecord(sender: UIBarButtonItem){
//        print("排程")
//    }
   //manuCircular
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let secondVC = segue.destination as! IntroViewController
//        secondVC.transitioningDelegate = self
//        secondVC.modalPresentationStyle = .custom
//    }
//    
    
//    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//        transition.transitionMode = .present
//        transition.startingPoint = introButton.center
//        transition.circleColor = introButton.backgroundColor!
//
//        return transition
//    }
//
//    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//        transition.transitionMode = .dismiss
//        transition.startingPoint = introButton.center
//        transition.circleColor = introButton.backgroundColor!
//
//        return transition
//    }
//
//
//
//
    
}
}
