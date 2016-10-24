//
//  View_ViewController.swift
//  swiftUI
//
//  Created by wanggang on 2016/10/24.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit

class View_ViewController: BaseViewController {

    var view1:UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        super.tipString = "点击屏幕空白处可以执行一段动画"
        self.title = "UIView + animate动画"
        createView()
    }

    func createView() {
        let v1 = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 100))
        v1.backgroundColor = UIColor.redColor()
        self.view.addSubview(v1)
        view1 = v1
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        UIView.animateWithDuration(1.5) { () -> Void in
            self.view1?.frame = CGRect.init(x: 200, y: 100, width: 50, height: 50)
            self.view1?.backgroundColor = UIColor.cyanColor()
            self.view1?.layer.masksToBounds = true
            self.view1?.layer.cornerRadius = 25.0
        }
    }

}
