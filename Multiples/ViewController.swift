//
//  ViewController.swift
//  Multiples
//
//  Created by Bartłomiej Dietl on 08/11/15.
//  Copyright © 2015 Bartłomiej Dietl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var multipier: Double = 0
    var currenValue: Double = 0
    let maxVale: Double = 50
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var entryField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        if entryField.text != nil && entryField.text != "" {
            startApp()
        }
    }
    
    @IBAction func onAddClick(sender: UIButton!) {
        currenValue = currenValue + multipier
        if currenValue >= maxVale {
            gameOver()
        } else {
            resultLabel.text = "\(currenValue - multipier) + "+"\(multipier) ="+"\(currenValue)"
        }
    }
    
    func gameOver() {
        playButton.hidden = false
        logo.hidden = false
        entryField.hidden = false
        addButton.hidden = true
        resultLabel.hidden = true
        entryField.text = ""
        
    }
    func startApp() {
        playButton.hidden = true
        logo.hidden = true
        entryField.hidden = true
        addButton.hidden = false
        resultLabel.hidden = false
        
        currenValue = 0
        multipier = Double(entryField.text!)!
        resultLabel.text = "Press ADD to add!"
    }

}

