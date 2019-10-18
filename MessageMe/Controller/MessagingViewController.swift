//
//  MessagingViewController.swift
//  MessageMe
//
//  Created by Petr Skorkovsky on 17/10/2019.
//  Copyright © 2019 Petr Skorkovsky. All rights reserved.
//

import UIKit

class MessagingViewController: UIViewController, UITableViewDataSource {
    
    

    var myself: Person?
    private var messages = [Message]()
    
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = myself?.name
        tableView.rowHeight = 70
    }
           //Function
    
    @IBAction func closeAction() {
        dismiss(animated: true)
    }
   
    @IBAction func sendAction() {
        
         if let text = textInput.text,
            let myself = myself {
            
           //send message
            //print(text)
            
            let message = Message(text: text, date: Date(), sender: myself)
              messages.append(message)
            
            
            
           //clear input
            textInput.text = ""
            
            //reload table data
            tableView.reloadData()
        }
        
    }
    
    
         //MARK  - Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageTableViewCell", for: indexPath) as! MessageTableViewCell
        
        let message = messages.reversed()[indexPath.row]
        
        cell.lblName.text = message.sender.name
        cell.lblText.text = message.text
        cell.lblTime.text = message.dateString
        
        return cell
    }
    
       
    
}
