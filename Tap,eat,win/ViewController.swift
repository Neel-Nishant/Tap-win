//
//  ViewController.swift
//  Tap,eat,win
//
//  Created by Neel Nishant on 19/06/16.
//  Copyright © 2016 Neel Nishant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //variables
    var maxtaps=0
    var curtaps=0
    
    //outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var taps: UITextField!
    @IBOutlet weak var playbtn:UIButton!
    
    @IBOutlet weak var tapbtn: UIButton!
    @IBOutlet weak var taplbl: UILabel!
    
    @IBAction func onPressingCoin(sender: UIButton!){
        curtaps += 1
        updatetaplbl()
        if isGameOver(){
            restartGame()
        }
    }
    
    @IBAction func onPressingPlay(sender: UIButton!){
       
        
        if (taps.text != nil && taps.text != "") {
            logoImg.hidden=true
            playbtn.hidden=true
            taps.hidden=true
            
            tapbtn.hidden=false
            taplbl.hidden=false
            
            maxtaps = Int(taps.text!)!
            curtaps=0
            
            
            updatetaplbl()
        }
        
    }
    func restartGame(){
        maxtaps=0
        taps.text=""
        logoImg.hidden=false
        playbtn.hidden=false
        taps.hidden=false
        
        tapbtn.hidden=true
        taplbl.hidden=true
        
    }
    func isGameOver() -> Bool{
        if curtaps >= maxtaps
        {return true}
        else
        {return false}
    }
    func updatetaplbl(){
        taplbl.text = "\(curtaps) Taps"
    }
    


}

