//
//  ViewController.swift
//  App9_PlayMusic
//
//  Created by User on 1/11/15.
//  Copyright © 2015 iCologic. All rights reserved.
//

import UIKit
import AVFoundation // Fase 1 -> Importacion de AVFoundation es el framework que contiene las clases Audio y Video de Apple

class ViewController: UIViewController {
    
    //MARK: - VARIBALES LOCALES
    var player : AVAudioPlayer = AVAudioPlayer() // Alloc _ init
    
    
    
    
    //MARK: - IB
    
    @IBOutlet weak var mySliderBar: UISlider!
    
    
    
    @IBAction func myPlayButton(sender: AnyObject) {
        /*
        // Fase 2 -> Acceso al fichero
        let audioPath = NSBundle.mainBundle().pathForResource("09 I Appear Missing", ofType: "mp3")! // Vacio no puede ser es decir "NOT NULL"
        let url = NSURL(fileURLWithPath: audioPath)
            
        // FAse 2.1 -> Podriamos tener errores como que el fichero no existe, esta mal escrito, esta dañado desde su origen
        var writeError : NSError? = nil; // es optional puede estar vacio // OJOOO por eso el "?"
        
        do{
            player = try AVAudioPlayer(contentsOfURL: url)
        }catch let error1 as NSError{
            writeError = error1
            //player = nil
        }

        
        // Fase 2.2 -> comporobacion de la variable error
        if  writeError == nil{
            player.play()
        }else{
            print(writeError)
        }*/
        
        player.play()
        
        
   
    }
    
    
    @IBAction func myPauseButton(sender: AnyObject) {
        
        player.pause()
        
    }
    
    @IBAction func myStopButton(sender: AnyObject) {
        
        player.stop()
        // Le decimos el punto de stop actual es 0
        player.currentTime = 0
        
        
    }
    
    @IBAction func myVolumeChanged(sender: AnyObject) {
        
        player.volume = mySliderBar.value
        
    }
    
    
    
    //MARK: - LIFE APP
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let audioPath = NSBundle.mainBundle().pathForResource("09 I Appear Missing", ofType: "mp3")! // Vacio no puede ser es decir "NOT NULL"
        let url = NSURL(fileURLWithPath: audioPath)
        
        // FAse 2.1 -> Podriamos tener errores como que el fichero no existe, esta mal escrito, esta dañado desde su origen
        var writeError : NSError? = nil; // es optional puede estar vacio // OJOOO por eso el "?"
        
        do{
            player = try AVAudioPlayer(contentsOfURL: url)
        }catch let error1 as NSError{
            writeError = error1
            //player = nil
        }
        
        
        // Fase 2.2 -> comporobacion de la variable error
        if  writeError == nil{
            print(writeError)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

