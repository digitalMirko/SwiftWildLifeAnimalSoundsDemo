//
//  ViewController.swift
//  Wild Life Sounds
//
//  Created by Mirko Cukich on 11/18/19.
//  Copyright © 2019 Digital Mirko. All rights reserved.
//
// Swift Wild Life Animal Sounds Demo - Demo 29 of 30

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var apeButtonOutlet: UIButton!
    @IBOutlet weak var elephantButtonOutlet: UIButton!
    @IBOutlet weak var hippoButtonOutlet: UIButton!
    @IBOutlet weak var lionButtonOutlet: UIButton!
    @IBOutlet weak var tigerButtonOutlet: UIButton!
    @IBOutlet weak var zebraButtonOutlet: UIButton!
    
    @IBOutlet weak var volumeSliderOutlet: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // content mode of the images on the buttons
        apeButtonOutlet.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        elephantButtonOutlet.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        hippoButtonOutlet.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        lionButtonOutlet.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        tigerButtonOutlet.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        zebraButtonOutlet.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        
        
    }
    
    @IBAction func apeButtonClicked(_ sender: Any) {
        
        
    }
    
    @IBAction func elephantButtonClicked(_ sender: Any) {
        
        
    }
    
    @IBAction func hippoButtonClicked(_ sender: Any) {
        
        
    }
    
    @IBAction func lionButtonClicked(_ sender: Any) {
        
        
    }
    
    @IBAction func tigerButtonClicked(_ sender: Any) {
        
        
        
    }
    
    @IBAction func zebraButtonClicked(_ sender: Any) {
        
        
    }
    
    
    @IBAction func volumeChanged(_ sender: Any) {
        
        
    }
    
    
    
    
}

