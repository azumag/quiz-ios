//
//  ViewController.swift
//  Quiz
//
//  Created by Nu Wai Thu on 8/6/16.
//  Copyright © 2016 Nu Wai Thu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var startbtn: UIButton!
    
     var category = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startbtn.layer.cornerRadius = startbtn.bounds.size.width/16
        startbtn.clipsToBounds = true
        // Do any additional setup after loading the view, typically from a nib.
        
        // nothing to do
    }
    
    @IBAction func textFIeld(sender: AnyObject) {
            startbtn.hidden = false;
    }

    @IBAction func statbtnAction(sender: AnyObject) {
        
        let remoteURL = NSURL(string: "https://blooming-depths-53477.herokuapp.com/categories/")
        
        if let remoteURL = remoteURL {
            
            // Try to download data
            
            let jsonData = NSData(contentsOfURL: remoteURL)
            
            //Using check if nil as an alternative to serialize the data
            
            print(jsonData)
            
            if jsonData != nil {
                
                var names = [String]()
                
                do {
                    
                    let json = try NSJSONSerialization.JSONObjectWithData(jsonData!, options: .AllowFragments)
                    
                    
//                    if let blogs = json["categories"] as? [[String: AnyObject]] {
                    if let blogs = json["category"] as? [[String: AnyObject]] {
                        
                        for blog in blogs {
                            
                            if let name = blog["name"] as? String {
                                
                                names.append(name)
                                //self.category = ["A","B","C"]
                                
                                print(name)
                                
                            }
                            
                        }
                        
                    }
                    
                } catch {
                    
                    print("error serializing JSON: \(error)")
                    
                }
                
                
                
                print(names)
                self.category = names
                self.performSegueWithIdentifier("GoToCT", sender: self)


            }
        }
        

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let driver = segue.destinationViewController as! CategoryTableViewController
        
        var whatToPass = self.category
        
        driver.arrayTocategory = whatToPass
        
        
    }



}

