//
//  TextFileViewController.swift
//  swiftUI
//
//  Created by wanggang on 2016/10/24.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit

class TextFileViewController: BaseViewController,UITextFieldDelegate {

    var firstTextFiled:UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
        createTextFile()
    }

    func createTextFile() {
        let textfile1 = UITextField.init(frame: CGRect.init(x: 50, y: 20, width: 200, height: 40))
        textfile1.borderStyle = UITextBorderStyle.RoundedRect
        textfile1.clearButtonMode = UITextFieldViewMode.Always
        textfile1.placeholder = "可以输入内容,可限制了键盘的模式"
        textfile1.delegate = self
        self.view.addSubview(textfile1)

        firstTextFiled = textfile1

        let btn = UIButton.init(type: .Custom)
        btn.frame = CGRect.init(x: 50, y: 70, width: 200, height: 40)
        btn.backgroundColor = UIColor.cyanColor()
        btn.setTitle("点击改成密码类型", forState: .Normal)
        btn.addTarget(self, action: "buttonClick", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
    }

    func buttonClick() {
        self.firstTextFiled?.secureTextEntry = true
    }

    func textFieldDidBeginEditing(textField: UITextField) {
        print("\(__FUNCTION__)")
    }

    func textFieldDidEndEditing(textField: UITextField) {
        print("\(__FUNCTION__)")
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print("点击return收起键盘")
        textField.resignFirstResponder()
        return true
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("触摸任意位置收起键盘")
        self.firstTextFiled?.resignFirstResponder()
    }

}
