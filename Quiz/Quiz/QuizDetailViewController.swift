//
//  QuizDetailViewController.swift
//  Quiz
//
//  Created by Nu Wai Thu on 8/6/16.
//  Copyright © 2016 Nu Wai Thu. All rights reserved.
//

import UIKit

class QuizDetailViewController: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var quiz: UILabel!
    var picturesToRetrieve:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        quiz.text = picturesToRetrieve
        btn1.layer.cornerRadius = btn1.bounds.size.width/64
        btn1.clipsToBounds = true

        btn2.layer.cornerRadius = btn2.bounds.size.width/64
        btn2.clipsToBounds = true

        btn3.layer.cornerRadius = btn3.bounds.size.width/64
        btn3.clipsToBounds = true

        btn4.layer.cornerRadius = btn4.bounds.size.width/64
        btn4.clipsToBounds = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
