//
//  ViewController.swift
//  tianqi.test
//
//  Created by jerry on 16/7/22.
//  Copyright © 2016年 jerry. All rights reserved.
//

import UIKit





class ViewController: UIViewController {

    @IBOutlet weak var showWeatherInfo: UITextView!
    @IBAction func weatherInfo(sender: AnyObject) {
        
        WeatherInfo()
    }
    
    func WeatherInfo(){
        //访问网络
        let url = NSURL(string:"http://www.weather.com.cn/adat/sk/101110101.html")
        let jsonData = NSData(contentsOfURL: url!)
        
        //        //方法1 使用NSJSONSerialization解析
        //        do {
        //            let json=try NSJSONSerialization.JSONObjectWithData(jsonData!, options:[]) as! [String:AnyObject]
        //            let weatherInf=json["weatherinfo"] as! NSDictionary
        //            let city=weatherInf["city"]!
        //            let temp=weatherInf["temp"]!
        //            showWeatherInfo.text="城市:\(city)\n温度:\(temp)\n "
        //        }catch let error as NSError{
        //            print("解析出错。\(error.localizedDescription)")
        //        }
        
        //方法2使用SwiftyJSON解析
        let json=JSON(data:jsonData!)
        let city=json["weatherinfo"]["city"]
        let temp=json["weatherinfo"]["temp"]
        showWeatherInfo.text="城市:\(city)\n温度:\(temp)\n"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

