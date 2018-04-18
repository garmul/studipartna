//
//  PlayAddViewController.swift
//  StudiPartna
//
//  Created by Gary Mullings on 4/17/18.
//  Copyright © 2018 Gary Mullings. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class PlayAddViewController: AVPlayerViewController,AVAudioPlayerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
//
//        player.addObserver
//
        
//
//                 player.addObserver
//                // Create an AVPlayer, passing it the HTTP Live Streaming URL.
//                let player = AVPlayer(url: url)
//
//                // Create a new AVPlayerViewController and pass it a reference to the player.
//                let controller = AVPlayerViewController()
//                controller.player = player
//                 player.play()        // Modally present the player and call the player's play()
        
        
        
                // Create RUL object
                let url = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        
                // Create Player Item object
                let playerItem: AVPlayerItem = AVPlayerItem(url: url!)
                // Assign Item to Player
                player = AVPlayer(playerItem: playerItem)
        
                // Prepare AVPlayerViewController
                let videoPlayer = AVPlayerViewController()
                // Assign Video to AVPlayerViewController
                videoPlayer.player = player
        
        player?.play()
        
                //videoPlayer.player?.play()
        
        
//                NotificationCenter.default.addObserver(self, selector: #selector(PracticeExamsViewController.finishVideo), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil)
//                print("1")
//        //         Present the AVPlayerViewController
//                present(videoPlayer, animated: true){
//                    videoPlayer.player?.play()
//                }
//
//             print("3")
//
//
   

        
       NotificationCenter.default.addObserver(self, selector: #selector(playToEnd), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil)
     

        }
   


    @objc func playToEnd (){
        self.dismiss(animated: true, completion: nil)
        print("Video Endend")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
