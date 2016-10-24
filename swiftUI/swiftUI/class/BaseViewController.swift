//
//  BaseViewController.swift
//  swiftUI
//
//  Created by wanggang on 2016/10/24.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var tipString:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor.whiteColor()
        self.automaticallyAdjustsScrollViewInsets = false
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        if (self.tipString != nil){
            let a = UIAlertController.init(title: "tips", message: self.tipString, preferredStyle: .Alert)
            let ac = UIAlertAction.init(title: "好的", style: UIAlertActionStyle.Cancel, handler: nil)
            a.addAction(ac)
            self .presentViewController(a, animated: true) { () -> Void in
                //
            }
        }
    }

}
