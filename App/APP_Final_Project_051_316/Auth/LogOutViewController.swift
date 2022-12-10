//
//  settingViewController.swift
//  APP_Final_Project_051_316
//
//  Created by Nontaphat Pongpis on 28/11/2564 BE.
//

import UIKit
import Photos
import Firebase
import FirebaseStorage
import FirebaseStorageUI


class settingViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logOutBTN(_ sender: Any) {
        let auth=Auth.auth()
        
        do {
            try auth.signOut()
            self.dismiss(animated: true, completion: nil)
        } catch let SignOutError {
            self.present(Service.createAlertController(title: "Error", message: SignOutError.localizedDescription), animated: true, completion: nil )
        }
    }
    
    
    

}
