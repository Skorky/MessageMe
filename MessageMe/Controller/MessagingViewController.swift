//
//  MessagingViewController.swift
//  MessageMe
//
//  Created by Petr Skorkovsky on 17/10/2019.
//  Copyright © 2019 Petr Skorkovsky. All rights reserved.
//

import UIKit

class MessagingViewController: UIViewController {

    var myself: Person?
    
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var lblName: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = myself?.name
    }
           //Function
    
    @IBAction func closeAction() {
        dismiss(animated: true)
    }
   
    @IBAction func sendAction() {
        
         if let text = textInput.text {
            
           //send message
            print(text)
            
           //clear input
            textInput.text = ""
        }
        
    }
    
    

}
