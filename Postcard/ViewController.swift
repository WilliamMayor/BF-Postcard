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
    @IBOutlet weak var nameLabel: UILabel!
    
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
        
        nameLabel.text = nameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.hidden = false
        
        sendPostcardButton.setTitle(
            "Postcard Sent!", forState: UIControlState.Normal)
        
        messageTextField.text = ""
        messageTextField.resignFirstResponder()
        
        nameTextField.text = ""
        nameTextField.resignFirstResponder()
    }
    @IBAction func nameTextFieldBeginEdit(sender: UITextField) {
        sendPostcardButton.setTitle(
            "Send Postcard", forState: UIControlState.Normal)
    }
    @IBAction func messageTextFieldBeginEdit(sender: UITextField) {
        sendPostcardButton.setTitle(
            "Send Postcard", forState: UIControlState.Normal)
    }

}

