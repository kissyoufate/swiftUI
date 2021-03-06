//
//  RootViewController.swift
//  swiftUI
//
//  Created by wanggang on 2016/10/24.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit

class RootViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {

    var dataArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "SwiftUI"
        dataArray = ["UIView","UILabel","UIImage","UIImageView","UIButton","UITextFile","UITextView","UIScrollView","UICollectionView","AVPlayer","AVAudioPlayer","UIDatePicker","UIPickerView","actionsheet && alert"]
        createUI()
    }

    func createUI() {
        let tb = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height-64), style: .Plain)
        tb.delegate = self;
        tb.dataSource = self;
        self.view.addSubview(tb)
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return dataArray.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cellID = "cellid"
        let cell = UITableViewCell.init(style: .Default, reuseIdentifier: cellID)
        cell.textLabel?.text =  "\(indexPath.row+1)" + ". " + dataArray[indexPath.row]
        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(View_ViewController(), animated: true)
            break
        case 1:
            self.navigationController?.pushViewController(LabelViewController(), animated: true)
        case 2:
            self.navigationController?.pushViewController(ImageViewController(), animated: true)
        case 3:
            self.navigationController?.pushViewController(ImageViewViewController(), animated: true)
        case 4:
            self.navigationController?.pushViewController(ButtonViewController(), animated: true)
            break
        case 5:
            self.navigationController?.pushViewController(TextFileViewController(), animated: true)
            break
        case 6:
            self.navigationController?.pushViewController(TextViewViewController(), animated: true)
            break
        case 7:
            self.navigationController?.pushViewController(ScrollViewViewController(), animated: true)
            break
        case 8:
            self.navigationController?.pushViewController(CollectionViewViewController(), animated: true)
            break
        case 9:
            self.navigationController?.pushViewController(AVViewController(), animated: true)
            break
        case 10:
            self.navigationController?.pushViewController(AVAudioViewController(), animated: true)
            break
        case 11:
            self.navigationController?.pushViewController(datePickerViewController(), animated: true)
            break
        case 12:
            self.navigationController?.pushViewController(PickerViewViewController(), animated: true)
            break
        case 13:
            self.navigationController?.pushViewController(Alert_ActionSheet_ViewController(), animated: true)
            break
        default:
            break
        }
    }

}
