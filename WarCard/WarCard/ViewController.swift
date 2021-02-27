//
//  ViewController.swift
//  WarCard
//
//  Created by vibhak golchha on 15/05/20.
//  Copyright © 2020 vibhak golchha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftimageView: UIImageView!
    
    
    @IBOutlet weak var rightimageView: UIImageView!
    
    
    @IBOutlet weak var playerScore: UILabel!
    
    
    @IBOutlet weak var cpuScore: UILabel!
    
    @IBOutlet weak var PlayerWins: UILabel!
    
    
    @IBOutlet weak var CPUWins: UILabel!
    
    @IBOutlet weak var dealButtonHide: UIButton!
    
    
    @IBOutlet weak var PlayAgainHide: UIButton!
    
    @IBAction func PlayAgain(_ sender: Any) {
        
        dealButtonHide.isHidden = false
        leftimageView.isHidden = false
        rightimageView.isHidden = false
        
        leftimageView.image = UIImage(named: "back")
        rightimageView.image = UIImage(named: "back")
        PlayerWins.isHidden = true
        CPUWins.isHidden = true
        leftLabel = 0
        rightLabel = 0
        playerScore.text = String(afterPlay)
        cpuScore.text = String(afterPlay)
        PlayAgainHide.isHidden = true
        
        
    }
    
    
    var leftLabel = 0
    var rightLabel = 0
    var afterPlay = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        PlayerWins.isHidden = true
        CPUWins.isHidden = true
        PlayAgainHide.isHidden = true
        
        
        
        
    }

    
    @IBAction func dealButton(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        leftimageView.image = UIImage(named:  "card\(leftNumber)")
        
        rightimageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            
            leftLabel += 1
            playerScore.text = String(leftLabel)
            
        }
        else if leftNumber < rightNumber {
            rightLabel += 1
            cpuScore.text = String(rightLabel)
        }
        else {
         
            
            
        }
        
        if leftLabel == 10 {
            PlayerWins.isHidden = false
            leftimageView.isHidden = true
            rightimageView.isHidden = true
            dealButtonHide.isHidden = true
            PlayAgainHide.isHidden = false
            
            
            
        }
        else if rightLabel == 10
        {
            CPUWins.isHidden = false
            leftimageView.isHidden = true
            rightimageView.isHidden = true
            dealButtonHide.isHidden = true
            PlayAgainHide.isHidden = false
            
            
        }
            
        
    }
    
}

