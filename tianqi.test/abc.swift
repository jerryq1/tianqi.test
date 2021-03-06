//
//  abc.swift
//  tianqi.test
//
//  Created by jerry on 16/7/22.
//  Copyright © 2016年 jerry. All rights reserved.
//

import UIKit


//创建NSURL对象
let urlString:String="http://www.hangge.com/getJsonData.php"
let url:NSURL! = NSURL(string:urlString)
//创建请求对象
let request:NSURLRequest = NSURLRequest(URL: url)

let session = NSURLSession.sharedSession()

let dataTask = session.dataTaskWithRequest(request,
    completionHandler: {(data, response, error) -> Void in
        if error != nil{
            print(error?.code)
            print(error?.description)
        }else{
            let json = JSON(data: data!)
            if let number = json[0]["phones"][0]["number"].string {
                // 找到电话号码
                print("第一个联系人的第一个电话号码：",number)
            }
        }
}) as NSURLSessionTask

