//
//  ViewController.swift
//  EasyBrowser
//
//  Created by Kimberly Skipper on 12/21/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIWebViewDelegate
{
    
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        
        textField.resignFirstResponder()
        let website = textField.text
        let url = URL (string: website!)
        let requestObject = URLRequest(url: url!)
        self.webView.loadRequest(requestObject)
       
        return true
    }
    
   
    
//    @IBAction func OpenPage (sender: UIButton)
//    {
//        webView.loadRequest(URLRequest(url: URL (string: "http://reddit.com")!))
//        //open "http://developer.apple.com"
//        //UIApplication.shared.open(NSURL(string:"http://developer.apple.com") as! URL, options: [:], completionHandler: nil)
//    }
}//end class

