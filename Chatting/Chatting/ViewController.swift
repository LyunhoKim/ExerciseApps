//
//  ViewController.swift
//  Chatting
//
//  Created by Lyunho Kim on 12/02/2019.
//  Copyright © 2019 Lyunho Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextViewDelegate {

    @IBOutlet var chatTableView: UITableView!
    @IBOutlet var messageTextView: UITextView!
    
    @IBOutlet var textViewBottomConstraint: NSLayoutConstraint!
    var messages: [String] = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageTextView.delegate = self
        
        chatTableView.register(UINib(nibName: "MyMessageCell", bundle: nil), forCellReuseIdentifier: "MyMessageCell")
        
        
    
    }

    @IBAction func sendMessage(_ sender: Any) {
        messages.append(messageTextView.text)
        messageTextView.text = ""
        chatTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyMessageCell", for: indexPath) as! MyMessageCell
        cell.myMessage.text = "test messages"
        return cell
    }
    
    
    
    
}

