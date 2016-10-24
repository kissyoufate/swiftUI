//
//  ImageViewViewController.swift
//  swiftUI
//
//  Created by wanggang on 2016/10/24.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit

class ImageViewViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        super.tipString = "加载网络中的图片,实际项目中会使用异步进行加载防止UI卡顿"
        createIV()
    }

    func createIV() {
        let url = NSURL(string: "http://img.ivsky.com/img/tupian/pre/201509/13/tianzhukui.jpg")
        let data = NSData(contentsOfURL: url!)
        let ig = UIImage.init(data: data!)
        let iv = UIImageView.init(image: ig)
        iv.contentMode = UIViewContentMode.ScaleAspectFit
        iv.frame = self.view.bounds
        self.view.addSubview(iv)
    }

}
