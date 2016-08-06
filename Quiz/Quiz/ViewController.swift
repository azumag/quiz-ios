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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startbtn.layer.cornerRadius = startbtn.bounds.size.width/16
        startbtn.clipsToBounds = true
        // Do any additional setup after loading the view, typically from a nib.
        
        // nothing to do
    }

    @IBAction func statbtnAction(sender: AnyObject) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

