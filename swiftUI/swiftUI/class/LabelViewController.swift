//
//  LabelViewController.swift
//  swiftUI
//
//  Created by wanggang on 2016/10/24.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit

class LabelViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createLabel()
    }

    func createLabel() {
        let label1 = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: 80))
        label1.textColor = UIColor.redColor()
        label1.numberOfLines = 0
        label1.text = "这是一个label,可以设置字体大小,字体颜色,字体的行数,0为自动换行,自适应字体大小"
        label1.font = UIFont.systemFontOfSize(14.0)
        self.view.addSubview(label1)
    }

}
