//
//  ButtonViewController.swift
//  swiftUI
//
//  Created by wanggang on 2016/10/24.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit

class ButtonViewController: BaseViewController {

    var btn1:UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        super.tipString = "点击button可以执行一段动画"
        createButton()
    }

    func createButton() {
        let btn = UIButton.init(type: .Custom)
        btn.frame = CGRect.init(x: 100, y: 50, width: 100, height: 40)
        btn.setBackgroundImage(UIImage.init(named: "icon1"), forState: .Normal)
        btn.setTitle("clickMe", forState: .Normal)
        btn.addTarget(self, action: "buttonClick:", forControlEvents: .TouchUpInside)
        btn.tag = 200
        self.view.addSubview(btn)

        btn1 = btn
    }

    func buttonClick(button:UIButton) {
        print("button的tag = \(button.tag)")
        UIView.animateWithDuration(1.5) { () -> Void in
            self.btn1?.frame = CGRect.init(x: 50, y: 300, width: 200, height: 100)
            self.btn1?.setTitle("执行了一段动画", forState: .Normal)
        }
    }

}
