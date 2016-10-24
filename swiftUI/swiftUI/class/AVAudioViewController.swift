//
//  AVAudioViewController.swift
//  swiftUI
//
//  Created by wanggang on 2016/10/24.
//  Copyright © 2016年 wanggang. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class AVAudioViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        super.tipString = "点击空白处播放音乐"
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        playMusic()
    }

    func playMusic() {
        let path = "http://m2.music.126.net/wmGWt22miHELw0Zbe3ECMQ==/2127554999752365.mp3"
        let avc = AVPlayerViewController.init()
        avc.player = AVPlayer.init(URL: NSURL(string: path)!)
        self.presentViewController(avc, animated: true, completion: nil)
    }

}