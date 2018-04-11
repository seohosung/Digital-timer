//
//  ViewController.swift
//  Digital timer
//
//  Created by D7703_24 on 2018. 4. 11..
//  Copyright © 2018년 D7703_24. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var Swit: UISwitch!
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
    var myTimer = Timer()
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        Swit.setOn(false, animated: true)
        
    }
    
    
    
    @objc func updateTime() {
        
        let date = Date()
        
        let formatter = DateFormatter()
        
        formatter.dateFormat = "HH:mm:ss EEE"
        
        timeLabel.text = formatter.string(from: date)
        
    }
    
    @IBAction func timerStrat(_ sender: Any) {
        
        if Swit.isOn == true{
            
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
            
        }
            
        else{
            
            myTimer.invalidate()
            
        }
        
    }
    
}


