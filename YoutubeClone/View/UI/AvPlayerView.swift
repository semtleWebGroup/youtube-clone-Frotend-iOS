//
//  AvPlayerView.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/30.
//

import Foundation
import UIKit
import AVFoundation

final class AVPlayerView : UIView {
  override public class var layerClass: Swift.AnyClass {
    get {
      return AVPlayerLayer.self
    }
  }
 
  private var playerLayer: AVPlayerLayer {
    return self.layer as! AVPlayerLayer
  }
 
  func player() -> AVPlayer {
    return playerLayer.player!
  }
 
  func setPlayer(player: AVPlayer) {
    playerLayer.player = player
  }
 
  func setVideoFillMode(fillMode: String) {
    playerLayer.videoGravity = fillMode
  }
 
  func videoFillMode() -> String {
      return playerLayer.videoGravity.rawValue
  }
}
