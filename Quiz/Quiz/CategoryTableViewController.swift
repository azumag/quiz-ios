//
//  CategoryTableViewController.swift
//  Quiz
//
//  Created by Nu Wai Thu on 8/6/16.
//  Copyright © 2016 Nu Wai Thu. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    
    // nu wai fatty
    
    var arrayTocategory:[String] = [String]()
    //let swiftBlogs = ["IT","Japan","Myanmar"]
    
    let namesOfFood = [["What language used for making twitter?", "what is …..","what is ….."],
                       ["Tortilla", "Chimichanga", "Paella"],
                       ["Burek od mesa","Grah", "Janjetina"],
                       ["Tapas", "Churros", "Flan"],
                       ["Buche de Noel", "Cherry Cake", "Onion Soup"]]
    
    var ObjectNamesOfFood = [String]()
    
    var selectedCategory = ""
    
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
        return arrayTocategory.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("categoryCell", forIndexPath: indexPath) as! CategoryTableViewCell
        
        let row = indexPath.row
        cell.categoryname.text = arrayTocategory[row]
        
        return cell
    }
    
    // MARK:  UITableViewDelegate Methods
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        
        self.ObjectNamesOfFood = self.namesOfFood[indexPath.row]
        self.selectedCategory = arrayTocategory[indexPath.row];
        
        self.performSegueWithIdentifier("Segue", sender: self)
        print(arrayTocategory[row])
        print(row)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let driver = segue.destinationViewController as! QuizTableViewController
        
        var quizz = QuizRetrieve.retrieve(self.selectedCategory);
        
        var whatToPass = self.ObjectNamesOfFood
        
        driver.arrayToPass = whatToPass
        driver.quizz = quizz
        
        
    }
}
