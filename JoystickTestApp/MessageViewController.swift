//
//  MessageViewController.swift
//  car_viewController
//
//  Created by WenTing on 2017/11/13.
//  Copyright © 2017年 WenTing. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    // information
    @IBOutlet weak var tableView: UITableView!
    var articles:[Artical]? = []
    //    @IBOutlet weak var messageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //       messageButton.layer.cornerRadius = messageButton.frame.size.width /  2
        self.tableView.rowHeight = 180;
        getArticles()
        
    }
    func getArticles(){
        let urlRequest = URLRequest(url:URL(string:"https://newsapi.org/v2/top-headlines?sources=techcrunch-cn&apiKey=ca1195b30f9040219b675b699028cc47")!)
    let task = URLSession.shared.dataTask(with: urlRequest) { (data, responce, error) in
            if error != nil{
                print("error")
                return
            }

           self.articles = [Artical]()
            do{
                let json = try JSONSerialization.jsonObject(with: data!, options:.mutableLeaves) as![String:AnyObject]
                if let articlesFromJson = json["articles"] as?[[String:AnyObject]]{
                    for articleWithJson in articlesFromJson{
                        let article = Artical()
                        if let title = articleWithJson["title"]as?String,
                            let author = articleWithJson["author"]as?String,
                            let desc = articleWithJson["description"] as?String ,
                            let url = articleWithJson["url"] as?String,
                                let urlToImage = articleWithJson["urlToImage"] as?String{
                        article.author = author
                        article.headline = title
                        article.desc = desc
                        article.imgUrl = urlToImage
                        article.url = url
                        }
                        self.articles?.append(article)
                    }
                }
                DispatchQueue.main.async {
                   self.tableView.reloadData()
                }

            }catch let error {
                print(error)
                }
        }
        task.resume()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "articleCell", for: indexPath) as! ArticleCell
//        cell.title.text = "this is a text!"
        cell.title.text = self.articles?[indexPath.item].headline
        cell.desc.text = self.articles?[indexPath.item].desc
        cell.author.text = self.articles?[indexPath.item].author
        cell.imgView.downloadImage(from: (self.articles?[indexPath.item].imgUrl)!)

        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articles?.count ?? 0
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let webVC = UIStoryboard.init(name:"Main",bundle:nil).instantiateViewController(withIdentifier: "web") as!UIwebViewController
        webVC.url = self.articles?[indexPath.item].url
        self.present(webVC, animated: true, completion: nil)
    }
}
    
extension UIImageView{
        func downloadImage(from url:String){
            let urlRequest = URLRequest(url:URL(string:url)!)
            let task = URLSession.shared.dataTask(with: urlRequest) { (data, responce, error) in
                if error != nil {
                    print(error)
                    return
                }
                DispatchQueue.main.async {
                    self.image =  UIImage(data:data!)
                }
        }
            task.resume()
      }
    }
    
    
    
    
   
    
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


