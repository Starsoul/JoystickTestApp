//
//  ViewController123.swift
//  car
//
//  Created by 易霖 on 2017/11/15.
//  Copyright © 2017年 Bradl Howes. All rights reserved.
//

import UIKit

class ViewController123: UIViewController {

    private var qwe:Int = 0
    private var poi:Int = 0
    private var sss:Int = 0
    private var ddd:Int = 0
    private var fff:Int = 0
    private let ip:String = "192.168.0.1"
    private var q1 = DispatchQueue(label: "com.brhcode.car", qos: DispatchQoS.background , attributes: DispatchQueue.Attributes.concurrent)
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override var prefersStatusBarHidden: Bool{//狀態列隱藏
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        
     self.navigationController?.isNavigationBarHidden = true
        
        
        
        let rect = view.frame
        
        let wsize = CGSize(width: rect.height + 17   , height: rect.width + 20)
        let webvvv = CGRect(origin: CGPoint(x: -156.0,y: 136.5),size: wsize)
        
        let webvwv = UIWebView(frame: webvvv)
        //let url = URL(string: "http://\(self.ip):8090/?action=stream")
        let url = URL(string: "http://\(self.ip):8090")
        let req = URLRequest(url: url!)
        webvwv.loadRequest(req)
        webvwv.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / 2 * 1))
        view.addSubview(webvwv)  // 加入視訊
        
        
        let myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        myButton.setTitle("", for: .normal)
        myButton.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / 2 * 1))
        myButton.center = CGPoint(x: rect.width * 0.9,y: rect.height * 0.05)
        myButton.addTarget(self, action: #selector(aaa), for: UIControlEvents.touchUpInside)
        myButton.setImage(#imageLiteral(resourceName: "icons8-chevron_left_round.png"), for: .normal)
        
        view.addSubview(myButton)//加入按鈕
        
        
        
        let size = CGSize(width: 130.0, height: 130.0)
        let joystick1Frame = CGRect(origin: CGPoint(x: 10.0,
                                                    y: 25.0),
                                    size: size)
        let joystick1 = JoyStickView(frame: joystick1Frame)
        joystick1.monitor = { angle, displacement in
            
            
            let aaa:Int =  Int(angle)
            let bbb:Float = Float(displacement)

            if bbb > 0.8 && aaa >= 0 && aaa <= 180 {
                if self.qwe != 1 && self.sss != 1{
                    print("前")
                    self.qwe = 1
                    self.sss = 1
                    self.rrr()
                }
            }
            else if bbb > 0.8 && aaa >= 181 && aaa <= 360 {
                if self.qwe != 2 && self.sss != 2{
                    print("後")
                    self.qwe = 2
                    self.sss = 2
                    self.rrr()
                }
            }
            else if bbb <= 0.8{
                if self.qwe != 3 && self.sss != 0{
                    print("停止")
                    self.qwe = 3
                    self.sss = 0
                    self.rrr()
                }
            }
     
        }
        
        
        view.addSubview(joystick1)  //加入搖桿1
        
        joystick1.movable = false
        joystick1.alpha = 1.0
        joystick1.baseAlpha = 0.5
        joystick1.handleTintColor = UIColor.green
        
        
        
        let joystick2Frame = CGRect(origin: CGPoint(x: (10.0),
                                                    y: (rect.height - size.height - 35.0)),
                                    size: size)
        let joystick2 = JoyStickView(frame: joystick2Frame)
        joystick2.monitor = { angle, displacement in
            
            let aaa:Int =  Int(angle)
            let bbb:Float = Float(displacement)
            
            if bbb > 0.8 && aaa >= 91 && aaa <= 270 {
                if self.poi != 7 && self.ddd != 1{
                    print("右")
                    self.poi = 7
                    self.ddd = 1
                    self.rrr()
                }
            }
            else if bbb > 0.8 && aaa >= 0 && aaa <= 90 || bbb > 0.8 && aaa >= 271 && aaa <= 360 {
                if self.poi != 8 && self.ddd != 2{
                    print("左")
                    self.poi = 8
                    self.ddd = 2
                    self.rrr()
                }
            }
            else if bbb <= 0.8{
                if self.poi != 9 && self.ddd != 0{
                    print("中")
                    self.poi = 9
                    self.ddd = 0
                    self.rrr()
                }
            }
       
            
        }
        
        view.addSubview(joystick2) //加入搖桿2
        
        joystick2.movable = false
        joystick2.alpha = 1.0
        joystick2.baseAlpha = 0.5 // let the background bleed thru the base
        joystick2.handleTintColor = UIColor.blue // Colorize the handle
        
     
     
    }
    
    
    
    func aaa() {
        //let controller = self.storyboard?.instantiateViewController(withIdentifier: "view2")
        //self.performSegue(withIdentifier: "qwe123", sender: self)
        self.navigationController!.popViewController(animated: true)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    
    func rrr() {
        
        if self.sss == 1 && self.ddd == 0{
            if self.fff != 0{
                let str = "http://\(self.ip):8000/car/go"
                self.q1.async {
                    do{try! String(contentsOf: URL(string: str)!)}
                }
                self.fff = 0
            }
            
        }else if self.sss == 2 && self.ddd == 0{
            if self.fff != 1{
                let str = "http://\(self.ip):8000/car/back"
                self.q1.async {
                    do{try! String(contentsOf: URL(string: str)!)}
                }
                self.fff = 1
            }
        }else if self.sss == 0 && self.ddd == 2{
            if self.fff != 2{
                let str = "http://\(self.ip):8000/car/left"
                self.q1.async {
                    do{try! String(contentsOf: URL(string: str)!)}
                }
                self.fff = 2
            }
        }
        else if self.sss == 0 && self.ddd == 1{
            if self.fff != 3{
                let str = "http://\(self.ip):8000/car/right"
                self.q1.async {
                    do{try! String(contentsOf: URL(string: str)!)}
                }
                self.fff = 3
            }
        }
        else if self.sss == 1 && self.ddd == 1{
            if self.fff != 4{
                let str = "http://\(self.ip):8000/car/goright"
                self.q1.async {
                    do{try! String(contentsOf: URL(string: str)!)}
                }
                self.fff = 4
            }
        }
        else if self.sss == 1 && self.ddd == 2{
            if self.fff != 5{
                let str = "http://\(self.ip):8000/car/goleft"
                self.q1.async {
                    do{try! String(contentsOf: URL(string: str)!)}
                }
                self.fff = 5
            }
        }else if self.sss == 2 && self.ddd == 1{
            if self.fff != 6{
                let str = "http://\(self.ip):8000/car/backright"
                self.q1.async {
                    do{try! String(contentsOf: URL(string: str)!)}
                }
                self.fff = 6
            }
        }else if self.sss == 2 && self.ddd == 2{
            if self.fff != 7{
                let str = "http://\(self.ip):8000/car/backleft"
                self.q1.async {
                    do{try! String(contentsOf: URL(string: str)!)}
                }
                self.fff = 7
            }
        }else if self.sss == 0 && self.ddd == 0{
            if self.fff != 8{
                let str = "http://\(self.ip):8000/car/stop"
                self.q1.async {
                    do{try! String(contentsOf: URL(string: str)!)}
                }
                self.fff = 8
            }
        }
    }

}
