//
//  ViewController.swift
//  ios-udp-dooropener
//
//  Created by Jonas Kreusch on 06.12.17.
//  Copyright © 2017 Jonas Kreusch. All rights reserved.
//

import UIKit
import SwiftSocket

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func downstairs(_ sender: UIButton) {
        let client:UDPClient = UDPClient(address: "host", port: 8888)
        
        switch client.send(string:"password 1") {
        case .success:
            Swift.debugPrint("success")
        case .failure(let error):
            Swift.debugPrint(error)
        }
    }
    
    @IBAction func upstairs(_ sender: UIButton) {
        let client:UDPClient = UDPClient(address: "host", port: 8888)
        
        switch client.send(string:"password 2") {
        case .success:
            Swift.debugPrint("success")
        case .failure(let error):
            Swift.debugPrint(error)
        }
    }

}

