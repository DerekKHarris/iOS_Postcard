//
//  ViewController.swift
//  Postcard
//
//  Created by Derek Harris on 1/27/15.
//  Copyright (c) 2015 Derek Harris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var messageField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        messageLabel.text = messageField.text
        messageLabel.textColor = UIColor.redColor()
        messageLabel.hidden = false
        messageField.text = nil
        
        messageField.resignFirstResponder()
        
        sendButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
}

