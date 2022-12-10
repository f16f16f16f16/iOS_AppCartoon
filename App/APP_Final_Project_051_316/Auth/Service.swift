//
//  Service.swift
//  APP_Final_Project_051_316
//
//  Created by Nontaphat Pongpis on 6/12/2564 BE.
//

import Foundation
import  UIKit
import Firebase

class Service {
    static func createAlertController(title:String,message:String) -> UIAlertController {
        let alert = UIAlertController(title:title,message:message,preferredStyle: .alert)
        
        let okAction=UIAlertAction(title:"Ok",style: .default) { (action) in
            alert.dismiss(animated: true, completion: nil)
        }
        alert.addAction(okAction)
    return alert
    }
    
   
        
    

}
 
