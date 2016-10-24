//
//  AVViewController.swift
//  swiftUI
//
//  Created by wanggang on 2016/10/24.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class AVViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        super.tipString = "点击空白处进行视频的播放"
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        playMovie()
    }

    func playMovie() {
        let path = "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"
        let url = NSURL.init(string: path)

        let avc = AVPlayerViewController.init()
        avc.player = AVPlayer.init(URL: url!)
        self.presentViewController(avc, animated: true) { () -> Void in
            avc.player?.play()
        }
    }

}
