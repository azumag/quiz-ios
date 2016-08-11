//
//  QuizRetrieve.swift
//  Quiz
//
//  Created by 東垣外翔 on 2016/08/07.
//  Copyright © 2016年 Nu Wai Thu. All rights reserved.
//

import Foundation

class QuizRetrieve: NSObject {
    
    static func retrieve(category:String) -> [Quiz] {
        
        let remoteURL = NSURL(string: "https://blooming-depths-53477.herokuapp.com/quizzes/\(category)")
        var quizz = [Quiz]()

        if let remoteURL = remoteURL {
            
            let jsonData = NSData(contentsOfURL: remoteURL)

            
            if jsonData != nil {
                
                
                do {
                    
                    let json = try NSJSONSerialization.JSONObjectWithData(jsonData!, options: .AllowFragments)
                    
                    if let blogs = json["quiz"] as? [[String: AnyObject]] {
                        
                        for blog in blogs {
                            var quiz = Quiz()
                            
                            if let id = blog["id"] as? Int {
                                quiz.identifier = id;
                            }
                            if let q = blog["question"] as? String {
                                quiz.question = q;
                            }
                            if let anss = blog["answers"] as? [String] {
                                quiz.answers = anss;
                            }
                            
                            if let collect = blog["collect"] as? Int {
                                quiz.collect = collect;
                            }
                            
                            quizz.append(quiz)
                            
                        }
                        
                    }
                    
                } catch {
                    
                    print("error serializing JSON: \(error)")
                    
                }
            }
            
        }
        return quizz;

    }
   
}