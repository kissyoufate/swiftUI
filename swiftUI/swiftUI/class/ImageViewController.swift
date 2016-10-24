//
//  ImageViewController.swift
//  swiftUI
//
//  Created by wanggang on 2016/10/24.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit

class ImageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        super.tipString = "UIImage读取工程内或网络上的图片,并使用UIImageView进行展示"
        createImage()
    }

    func createImage() {
        let image1 = UIImage.init(named: "icon1")
        let iv = UIImageView.init(frame: self.view.bounds)
        iv.image = image1
        iv.contentMode = UIViewContentMode.ScaleAspectFit
        self.view.addSubview(iv)
    }

}
