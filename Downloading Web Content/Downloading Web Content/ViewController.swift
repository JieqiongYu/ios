//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Yu, Jieqiong | Mer | FINAD on 1/12/30 H.
//  Copyright © 30 Heisei Yu Jieqiong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*let url = URL(string: "https://www.stackoverflow.com")!
        webview.loadRequest(URLRequest(url: url))
        webview.loadHTMLString("<h1>Hello there!</h1>", baseURL: nil)*/

        if let url = URL(string: "https://www.stackoverflow.com") {
            let request = NSMutableURLRequest(url: url)
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                data, response, error in
                if error != nil {
                    print(error as Any)
                } else {
                    if let unwrappedData = data {
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        print(dataString as Any)
                        
                        DispatchQueue.main.sync(execute: {
                            // Update UI
                        })
                    }
                }
            }
            task.resume()
        }
        
        print("Hi there!")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

