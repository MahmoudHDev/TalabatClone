//
//  ViewController.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/12/22.
//

import UIKit
import AVKit
import AVFoundation

class MainViewController: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var topView          : UIView!
    @IBOutlet weak var bottomView       : UIView!
    @IBOutlet weak var locationBtn      : UIButton!
    @IBOutlet weak var manualLocationBtn: UIButton!
    
    //MARK:- Properties
    let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Lunch", ofType: "mp4")!))
    var platerLooper: AVPlayerLooper!
    var queuePlayer : AVQueuePlayer!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        self.basicPlayer()
        
    }
    
    //MARK:- Methods
    private func updateUI() {
        
        bottomView.layer.cornerRadius   = 20
        bottomView.layer.maskedCorners  = [.layerMinXMinYCorner, .layerMaxXMinYCorner]

        locationBtn.layer.cornerRadius  = 20

    }
    
    private func basicPlayer() {

        player.isMuted      = true
        let layer           = AVPlayerLayer(player: player)
        layer.frame         = topView.bounds
        layer.videoGravity  = .resizeAspectFill
        topView.layer.addSublayer(layer)
        player.play()
    }
    
    //MARK:- Actions

    @IBAction private func autoLocationBtn(_ sender: UIButton) {
     print("CLocationManager")
    }
    
    @IBAction private func manualLocationBtn(_ sender: UIButton) {
        print("Show Maps")
    }

}

