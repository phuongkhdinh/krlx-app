//
//  VolumeViewController.swift
//  KRLX
//
//  This file handles volume control functionality located on the live stream view. 
//
//  Created by Josie Bealle, Phuong Dinh, Maraki Ketema, Naomi Yamamoto on 5/30/15.
//  Copyright (c) 2015 KRLXpert. All rights reserved.
//

import Foundation
class VolumeViewController: UIViewController {
     var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    //Make vertical slider
    //Reference: http://stackoverflow.com/questions/29731891/how-can-i-make-a-vertical-slider-in-swift
    @IBOutlet weak var volumeSlider: UISlider!{
        didSet{
        volumeSlider.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI_2))
        }
    }
    

    override func viewDidLoad() {
        volumeSlider.value = appDelegate.currentVolume
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func changeVolume(sender: UISlider) {
        self.appDelegate.currentVolume = Float(sender.value)
        self.appDelegate.player.volume = appDelegate.currentVolume
        
    }
    
    
    
}