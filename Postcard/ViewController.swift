//
//  ViewController.swift
//  Postcard
//
//  Created by William Mayor on 10/11/2014.
//  Copyright (c) 2014 WilliamMayor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var sendPostcardButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendPostcardButtonPressed(sender: UIButton) {
        messageLabel.text = messageTextField.text
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.redColor()
        
        sendPostcardButton.setTitle(
            "Postcard Sent!", forState: UIControlState.Normal)
        
        messageTextField.text = ""
        messageTextField.resignFirstResponder()
    }

}

