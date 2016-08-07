//
//  QuizTableViewController.swift
//  Quiz
//
//  Created by Nu Wai Thu on 8/6/16.
//  Copyright © 2016 Nu Wai Thu. All rights reserved.
//

import UIKit

class QuizTableViewController: UITableViewController {

    
    var arrayToPass:[String] = [String]()
    var objectpicturesForEachMeal:String!
    //let swiftBlogs = ["How","When","Who"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK:  UITextFieldDelegate Methods
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayToPass.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("quizCell", forIndexPath: indexPath) as! QuizTableViewCell
        
        cell.quizTF.text = arrayToPass[indexPath.row]
        
        return cell
    }
    
    // MARK:  UITableViewDelegate Methods
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        
        self.objectpicturesForEachMeal = self.arrayToPass[indexPath.row]
        
        self.performSegueWithIdentifier("toDetail", sender: self)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let driver1 = segue.destinationViewController as! QuizDetailViewController
        
        driver1.picturesToRetrieve = objectpicturesForEachMeal
        
    }
    

}
