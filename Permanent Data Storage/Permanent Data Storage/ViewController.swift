//
//  ViewController.swift
//  Permanent Data Storage
//
//  Created by Yu, Jieqiong | Mer | FINAD on 12/14/29 H.
//  Copyright © 29 Heisei Yu, Jieqiong | Mer | FINAD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // let defaults:UserDefaults = UserDefaults.standard
        // defaults.set("Rob", forKey: "name")
        let nameObject = UserDefaults.standard.object(forKey: "name")
        if let name = nameObject as? String {
            print(name)
        }
        let arr = [1, 2, 3, 4]
        
        let arrayDefaults:UserDefaults = UserDefaults.standard
        arrayDefaults.set(arr, forKey: "array")
        let arrayObject = UserDefaults.standard.object(forKey: "array")
        if let array = arrayObject as? NSArray {
            print(array)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

