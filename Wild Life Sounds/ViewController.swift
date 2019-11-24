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
    
    var soundEffectApe: AVAudioPlayer = AVAudioPlayer()
    var soundEffectElephant: AVAudioPlayer = AVAudioPlayer()
    var soundEffectHippo: AVAudioPlayer = AVAudioPlayer()
    var soundEffectLion: AVAudioPlayer = AVAudioPlayer()
    var soundEffectTiger: AVAudioPlayer = AVAudioPlayer()
    var soundEffectZebra: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ContentMode of the images on the buttons - using scaleAspectFit 
        apeButtonOutlet.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        elephantButtonOutlet.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        hippoButtonOutlet.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        lionButtonOutlet.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
        tigerButtonOutlet.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        zebraButtonOutlet.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        
        let soundFileApe = Bundle.main.path(forResource: "ape", ofType: "mp3")
        let soundFileElephant = Bundle.main.path(forResource: "elephant", ofType: "mp3")
        let soundFileHippo = Bundle.main.path(forResource: "hippopotamus", ofType: "mp3")
        let soundFileLion = Bundle.main.path(forResource: "lion", ofType: "mp3")
        let soundFileTiger = Bundle.main.path(forResource: "tiger", ofType: "mp3")
        let soundFileZebra = Bundle.main.path(forResource: "zebra", ofType: "mp3")
        
        do {
            try soundEffectApe = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFileApe!))
            try soundEffectElephant = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFileElephant!))
            try soundEffectHippo = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFileHippo!))
            try soundEffectLion = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFileLion!))
            try soundEffectTiger = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFileTiger!))
            try soundEffectZebra = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFileZebra!))
        }
        
        catch {
            print(error)
        }
    }
    
    @IBAction func apeButtonClicked(_ sender: Any) {
        
        soundEffectApe.play()
    }
    
    @IBAction func elephantButtonClicked(_ sender: Any) {
        
        soundEffectElephant.play()
    }
    
    @IBAction func hippoButtonClicked(_ sender: Any) {
        
        soundEffectHippo.play()
    }
    
    @IBAction func lionButtonClicked(_ sender: Any) {
        
        soundEffectLion.play()
    }
    
    @IBAction func tigerButtonClicked(_ sender: Any) {
        
        soundEffectTiger.play()
        
    }
    
    @IBAction func zebraButtonClicked(_ sender: Any) {
        
        soundEffectZebra.play()
    }
    
    
    @IBAction func volumeChanged(_ sender: Any) {
        
        soundEffectApe.volume = volumeSliderOutlet.value
        soundEffectElephant.volume = volumeSliderOutlet.value
        soundEffectHippo.volume = volumeSliderOutlet.value
        soundEffectLion.volume = volumeSliderOutlet.value
        soundEffectTiger.volume = volumeSliderOutlet.value
        soundEffectZebra.volume = volumeSliderOutlet.value
    }
}
