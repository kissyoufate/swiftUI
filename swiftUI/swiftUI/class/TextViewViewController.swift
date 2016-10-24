//
//  TextViewViewController.swift
//  swiftUI
//
//  Created by wanggang on 2016/10/24.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit

class TextViewViewController: BaseViewController {

    var myTextView:UITextView?

    override func viewDidLoad() {
        super.viewDidLoad()
        super.tipString = "textView也有代理,不过不是很常用"
        createTextView()
    }

    func createTextView() {
        let textView1 = UITextView.init(frame: CGRect.init(x: 0, y: 10, width: self.view.frame.size.width, height: 200))
        textView1.textColor = UIColor.darkGrayColor()
        textView1.text = "Swift，苹果于2014年WWDC（苹果开发者大会）发布的新开发语言，可与Objective-C*共同运行于Mac OS和iOS平台，用于搭建基于苹果平台的应用程序"
        textView1.editable = false
        self.view.addSubview(textView1)

        myTextView = textView1

        let btn = UIButton.init(type: .Custom)
        btn.frame = CGRect.init(x: 0, y: 220, width: self.view.frame.size.width, height: 40)
        btn.backgroundColor = UIColor.redColor()
        btn.setTitle("编辑textView", forState: .Normal)
        btn.addTarget(self, action: "buttonClick", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
    }

    func buttonClick() {
        myTextView?.editable = true
        myTextView?.becomeFirstResponder()
    }

}
