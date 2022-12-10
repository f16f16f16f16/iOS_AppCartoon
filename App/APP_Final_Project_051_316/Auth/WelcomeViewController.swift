//
//  WelcomeViewController.swift
//  APP_Final_Project_051_316
//
//  Created by Nontaphat Pongpis on 6/12/2564 BE.
//

import UIKit
import Firebase
import FirebaseAuth

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            let vc=self.storyboard?.instantiateViewController(identifier: "alltoontabbar") as! UITabBarController
            self.view.window?.rootViewController=vc
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
