//
//  PickerViewViewController.swift
//  swiftUI
//
//  Created by wanggang on 2016/10/25.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit

class PickerViewViewController: BaseViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    var myPicker:UIPickerView?
    var dataArray = [AnyObject]()
    var showLable:UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        createPickerView()
    }

    func createPickerView() {

        dataArray = ["iOS","安卓","php","java","h5","c"]

        let picker = UIPickerView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: 200))
        picker.backgroundColor = UIColor.cyanColor()
        picker.delegate = self
        picker.dataSource = self
        self.view.addSubview(picker)

        myPicker = picker

        let lable = UILabel.init(frame: CGRect.init(x: 0, y: 250, width: self.view.frame.size.width, height: 50))
        lable.text = "可以选择上面的数据进行显示"
        lable.textAlignment = .Center
        self.view.addSubview(lable)
        showLable = lable
    }

    //返回组
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }

    //返回行
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return dataArray.count
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let str1 = "第" + String(row) + "行" + String(dataArray[row])
        return str1
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        showLable?.text = dataArray[row] as? String
    }

}
