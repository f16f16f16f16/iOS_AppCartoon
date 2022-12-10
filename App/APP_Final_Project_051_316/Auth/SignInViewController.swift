//
//  SignInViewController.swift
//  APP_Final_Project_051_316
//
//  Created by Nontaphat Pongpis on 6/12/2564 BE.
//

import UIKit
import Firebase

class SignInViewController: UIViewController {

    @IBOutlet weak var emailFill: UITextField!
    @IBOutlet weak var passwordFill: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignInBTN(_ sender: Any) {
        let auth = Auth.auth()
        
        auth.signIn(withEmail: emailFill.text!, password: passwordFill.text!) { AuthDataResult, Error in
            if Error != nil {
                self.present(Service.createAlertController(title: "Error", message: Error!.localizedDescription), animated: true, completion: nil)
                return
            }
            self.performSegue(withIdentifier: "passloginsus", sender: nil)
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
