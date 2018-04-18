//
//  PracticeExamsViewController.swift
//  StudiPartna
//
//  Created by Gary Mullings on 4/16/18.
//  Copyright © 2018 Gary Mullings. All rights reserved.
//

import UIKit
import AVKit


class PracticeExamsViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{
  
    let exams = Exams()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        practiceExamTableView.dataSource = self
        practiceExamTableView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exams.exam.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = practiceExamTableView.dequeueReusableCell(withIdentifier: "exams", for: indexPath)
        
        cell.textLabel?.text = exams.exam[indexPath.row]
        
        return cell
    }
    
   
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "gotoPlayVideo", sender: self)
        
//        // Create RUL object
//        let url = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
//
//        // Create Player Item object
//        let playerItem: AVPlayerItem = AVPlayerItem(url: url!)
//        // Assign Item to Player
//        let player = AVPlayer(playerItem: playerItem)
//
//        // Prepare AVPlayerViewController
//        let videoPlayer = AVPlayerViewController()
//        // Assign Video to AVPlayerViewController
//        videoPlayer.player = player
//
//        //videoPlayer.player?.play()
//
//
//        NotificationCenter.default.addObserver(self, selector: #selector(PracticeExamsViewController.finishVideo), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil)
//        print("1")
////         Present the AVPlayerViewController
//        present(videoPlayer, animated: true){
//            videoPlayer.player?.play()
//        }
//
//     print("3")
       
    
    }
    
    @objc func finishVideo()
    {
        print("Video Finished")
    }
    

    @IBOutlet weak var practiceExamTableView: UITableView!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
