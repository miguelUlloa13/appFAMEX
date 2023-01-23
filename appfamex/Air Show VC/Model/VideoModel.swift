//
//  VideoModel.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 23/01/23.
//

import Foundation
import AVKit
import AVFoundation
import UIKit

class VideoModel {
    
    var player: AVPlayer?
    
    func playVideo(nameClassViewController:UIViewController,nameVideo:String, typeVideo: String, viewVideo: UIView) {
        
        player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: nameVideo, ofType: typeVideo)!))
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        playerViewController.player?.volume = 0.03
        playerViewController.view.frame = viewVideo.bounds
        nameClassViewController.addChild(playerViewController)
        viewVideo.addSubview(playerViewController.view)
        playerViewController.didMove(toParent: nameClassViewController)
        playerViewController.videoGravity = .resizeAspectFill
        playerViewController.player!.play()
        
    }
    
}
