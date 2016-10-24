//
//  datePickerViewController.swift
//  swiftUI
//
//  Created by 王刚 on 2016/10/24.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit

class datePickerViewController: BaseViewController {

    var mylabel:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
    }
    
    func createDatePicker() {
        let mypicker = UIDatePicker.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: 200))
        mypicker.backgroundColor = UIColor.redColor()
        mypicker.datePickerMode = UIDatePickerMode.DateAndTime
        mypicker.addTarget(self, action: "pickerSelect:", forControlEvents: .ValueChanged)
        self.view.addSubview(mypicker)
        
        let label = UILabel.init(frame: CGRect.init(x: 0, y: 250, width: self.view.frame.size.width, height: 50))
        label.textAlignment = .Center
        self.view.addSubview(label)
        
        mylabel = label
    }
    
    func pickerSelect(picker:UIDatePicker) {
        print("\(picker.date)")
        self.mylabel?.text = String(picker.date)
    }
    
    

}
