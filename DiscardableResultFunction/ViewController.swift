//
//  ViewController.swift
//  DiscardableResultFunction
//
//  Created by Alex Nagy on 18/12/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let value = 320
        let key = "percentage"
        
//        let result = set(value: value, forKey: key)
//
//        if result {
//            let percentage = get(forKey: key)
//            print("Percentage: \(percentage)")
//        } else {
//            print("Tried to set invalid percentage")
//        }
        
        if set(value: value, forKey: key) {
            let percentage = get(forKey: key)
            print("Percentage: \(percentage)")
        } else {
            print("Tried to set invalid percentage")
        }
        
    }
    
    @discardableResult
    func set(value: Int, forKey key: String) -> Bool {
        if value >= 0 && value <= 100 {
            UserDefaults.standard.set(value, forKey: key)
            UserDefaults.standard.synchronize()
            return true
        }
        return false
    }
    
    func get(forKey key: String) -> Int {
        return UserDefaults.standard.integer(forKey: key)
    }
}

