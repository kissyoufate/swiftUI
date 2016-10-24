//
//  ScrollViewViewController.swift
//  swiftUI
//
//  Created by wanggang on 2016/10/24.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit

class ScrollViewViewController: BaseViewController,UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        super.tipString = "代理只列举了常用的一些"
        createScrollView()
    }

    func createScrollView() {
        //左右滑动的scrollview
        let sc1 = UIScrollView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height/2))
        //左右滑动的设置
        sc1.contentSize = CGSizeMake(self.view.frame.size.width*2, 0)
        sc1.backgroundColor = UIColor.lightGrayColor()
        sc1.delegate = self
        self.view.addSubview(sc1)

        let label1 = UILabel.init(frame: CGRect.init(x: 0, y: 50, width: self.view.frame.size.width, height: 20))
        label1.text = "这个scrollView可以往左右滑动"
        sc1.addSubview(label1)

        let label2 = UILabel.init(frame: CGRect.init(x:label1.frame.size.width, y: 50, width: self.view.frame.size.width, height: 20))
        label2.text = "这个scrollView可以往左右滑动23333"
        sc1.addSubview(label2)

        //上下滑动的scrollView
        let sc2 = UIScrollView.init(frame: CGRect.init(x: 0, y: sc1.frame.size.height, width: self.view.frame.size.width, height: self.view.frame.size.height/2))
        //上下滑动的设置
        sc2.contentSize = CGSizeMake(0, self.view.frame.size.height)
        sc2.pagingEnabled = true
        sc2.backgroundColor = UIColor.purpleColor()
        self.view.addSubview(sc2)

        let label3 = UILabel.init(frame: CGRect.init(x: 0, y: 50, width: self.view.frame.size.width, height: 20))
        label3.text = "这个scrollView可以往上下滑动并且设置了page,是一页一页的效果"
        sc2.addSubview(label3)

        let label4 = UILabel.init(frame: CGRect.init(x:0, y: sc2.frame.size.height, width: self.view.frame.size.width, height: 20))
        label4.text = "这个scrollView可以往上下滑动7788414!"
        sc2.addSubview(label4)
    }

    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        print("\(__FUNCTION__)")
    }

    func scrollViewDidScroll(scrollView: UIScrollView) {
        print("\(__FUNCTION__)")
    }

    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("\(__FUNCTION__)")
    }

}
