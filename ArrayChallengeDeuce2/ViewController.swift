//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func addNameToDeliLine(name: String)-> String {
        if name == "Billy Crystal" {
            deliLine.insert(name, atIndex: 0)
            return "Welcome Billy! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            deliLine.insert(name, atIndex: 0)
            return "Welcome Meg! You can sit wherever you like."
        } else if deliLine.isEmpty {
            deliLine.append(name)
            return "Welcome \(name), you're first in line!"
        } else {
            deliLine.append(name)
            return "Welcome \(name), you're number \(deliLine.count) in line."
        }
    }
    
        
        
        // Create your methods here
    func nowServing()-> String {
        
        if deliLine.isEmpty == false {
            let name = deliLine.removeAtIndex(0)
            return ("Now serving \(name)!")
        } else {
            return "There is no one to be served."
        }
        
    }
//
//    
    func deliLineDescription() -> String {
        var emptyLine = "The line is:"
        if deliLine.isEmpty {
               var emptyLine = "The line is currently empty."
                print("\(emptyLine)")
        } else {
            
            for(tixNum, cust) in deliLine.enumerate() {
              emptyLine += ("\n\(tixNum + 1). \(cust)")
            
        }
        }
            return emptyLine

    }

}
