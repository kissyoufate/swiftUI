//
//  CollectionViewViewController.swift
//  swiftUI
//
//  Created by wanggang on 2016/10/24.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit

class CollectionViewViewController: BaseViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        super.tipString = "颜色方块可点击!"
        createCollectionView()
    }

    func createCollectionView() {
        let layout = UICollectionViewFlowLayout.init()
        layout.itemSize = CGSizeMake((self.view.frame.size.width-40)/3, 100)
        let collect = UICollectionView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height - 64), collectionViewLayout: layout)
        collect.backgroundColor = UIColor.lightGrayColor()
        collect.dataSource = self
        collect.delegate = self
        self.view.addSubview(collect)

        collect.registerClass(mycell.self, forCellWithReuseIdentifier: "mycell")
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 40
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("mycell", forIndexPath: indexPath)
        cell.backgroundColor = UIColor.init(red: CGFloat(arc4random()%255)/255.0, green: CGFloat(arc4random()%255)/255.0, blue: CGFloat(arc4random()%255)/255.0, alpha: 1.0)
        return cell
    }


    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int{
        return 1
    }

    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let a = UIAlertController.init(title: "click", message: "点了\(indexPath.row)这个方块", preferredStyle: .Alert)
        let ac = UIAlertAction.init(title: "好的", style: .Cancel, handler: nil)
        a.addAction(ac)
        self.presentViewController(a, animated: true, completion: nil)
    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets{
        return UIEdgeInsetsMake(10, 10, 10, 10)
    }

}

class mycell: UICollectionViewCell {

}
