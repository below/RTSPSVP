//
//  ViewController.swift
//  RTSPSVP
//
//  Created by Alexander v. Below on 23.06.16.
//  Copyright © 2016 Deutsche Telekom AG. All rights reserved.
//

import UIKit

class ViewController: UIViewController, VLCMediaPlayerDelegate{

    @IBOutlet weak var videoView: UIView!
    var player : VLCMediaPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.player = VLCMediaPlayer()
        self.player.delegate = self;
        self.player.drawable = self.view;
        
        if let url = URL(string:"http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4") {
            /* create a media object and give it to the player */
            let media = VLCMedia(url: url)
            self.player.media = media;
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playPause(_ sender: AnyObject) {
        if self.player.isPlaying {
            self.player.pause()
        }
        else {
            self.player.play()
        }
    }

}

