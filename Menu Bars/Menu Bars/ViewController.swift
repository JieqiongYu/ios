//
//  ViewController.swift
//  Menu Bars
//
//  Created by Yu, Jieqiong | Mer | FINAD on 12/14/29 H.
//  Copyright © 29 Heisei Yu, Jieqiong | Mer | FINAD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()

    @IBAction func cameraPressed(_ sender: Any) {
        
        timer.invalidate()
        
    }
    
    func processTimer() {
        print("A second has passed!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer),
                                     userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

