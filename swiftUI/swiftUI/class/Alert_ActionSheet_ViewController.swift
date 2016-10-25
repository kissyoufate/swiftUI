//
//  Alert_ActionSheet_ViewController.swift
//  swiftUI
//
//  Created by wanggang on 2016/10/25.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit

class Alert_ActionSheet_ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
    }

    func createUI() {
        let btn1 = UIButton.init(type: .Custom)
        btn1.frame = CGRect.init(x: 0, y: 50, width: self.view.frame.size.width, height: 50)
        btn1.backgroundColor = UIColor.cyanColor()
        btn1.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn1.setTitle("Alert", forState: UIControlState.Normal)
        self.view.addSubview(btn1)

        let btn2 = UIButton.init(type: .Custom)
        btn2.frame = CGRect.init(x: 0, y: 150, width: self.view.frame.size.width, height: 50)
        btn2.backgroundColor = UIColor.cyanColor()
        btn2.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn2.setTitle("ActionSheet", forState: UIControlState.Normal)
        self.view.addSubview(btn2)

        btn1.addTarget(self, action: "btn1Click", forControlEvents: UIControlEvents.TouchUpInside)
        btn2.addTarget(self, action: "btn2Click", forControlEvents: UIControlEvents.TouchUpInside)
    }

    func btn1Click() {
        let a = UIAlertController.init(title: "alertViewController", message: "alertViewController中添加alertAction,style:Alert", preferredStyle: UIAlertControllerStyle.Alert)
        let ac1 = UIAlertAction.init(title: "好的", style: UIAlertActionStyle.Default) { (UIAlertAction) -> Void in
            print("我点击了一个defaulf的action按钮")
        }
        let ac2 = UIAlertAction.init(title: "卡卡卡卡", style: UIAlertActionStyle.Cancel) { (UIAlertAction) -> Void in
            print("我点击了一个Cancel的action按钮")
        }
        a.addAction(ac1)
        a.addAction(ac2)
        self.presentViewController(a, animated: true, completion: nil)
    }

    func btn2Click() {
        let a = UIAlertController.init(title: "alertViewController", message: "alertViewController中添加alertAction,style:ActionSheet", preferredStyle: UIAlertControllerStyle.ActionSheet)
        let ac1 = UIAlertAction.init(title: "好的", style: UIAlertActionStyle.Default) { (UIAlertAction) -> Void in
            print("我点击了一个defaulf的action按钮")
        }
        let ac2 = UIAlertAction.init(title: "卡卡卡卡", style: UIAlertActionStyle.Cancel) { (UIAlertAction) -> Void in
            print("我点击了一个Cancel的action按钮")
        }
        a.addAction(ac1)
        a.addAction(ac2)
        self.presentViewController(a, animated: true, completion: nil)
    }

}
