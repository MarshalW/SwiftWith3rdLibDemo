//
//  ViewController.swift
//  SwiftWith3rdLibDemo
//
//  Created by Marshal Wu on 14/11/14.
//  Copyright (c) 2014年 Marshal Wu. All rights reserved.
//

import UIKit
import Snappy
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(animated: Bool) {
        println("super view: \(imageView.superview)")
        
        let padding = UIEdgeInsetsMake(100, 100, 0, 0)
        
        imageView.snp_makeConstraints { make in //autolayout
            make.edges.equalTo(self.imageView.superview!).with.insets(padding)
            return
        }
        
        imageView.sd_setImageWithURL(NSURL(string:"http://www.baidu.com/img/bdlogo.png"))
        
        Alamofire.request(.GET, "http://httpbin.org/get")
    }

}

