//
//  message.swift
//  MessageMe
//
//  Created by Petr Skorkovsky on 18/10/2019.
//  Copyright © 2019 Petr Skorkovsky. All rights reserved.
//

import Foundation

class Message {
    
    //MARK  - Variables
    
    var text: String
    var date: Date
    var sender: Person
    
    var dateString: String {
        get {
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm"
            return dateFormatter.string(from: date)
        }
    }
    // MARK - Object Lifecycle
    
    init(text: String, date: Date, sender: Person) {
        self.text = text
        self.date = date
        self.sender = sender
   }

}
