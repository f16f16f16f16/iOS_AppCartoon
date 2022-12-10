//
//  ShowPicToonViewController.swift
//  APP_Final_Project_051_316
//
//  Created by Nontaphat Pongpis on 5/12/2564 BE.
//

import UIKit
import Photos
import Firebase
import FirebaseStorage
import FirebaseStorageUI

class ShowPicToonViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var Pic1: UIImageView!
    @IBOutlet weak var Pic2: UIImageView!
    @IBOutlet weak var Pic3: UIImageView!
    @IBOutlet weak var Pic4: UIImageView!
    @IBOutlet weak var Pic5: UIImageView!
    
    var pic = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 2100, height: 0)
        let storage = Storage.storage()
        let storageRef = storage.reference()

        let ref1 = storageRef.child(pic[0])
        let ref2 = storageRef.child(pic[1])
        let ref3 = storageRef.child(pic[2])
        let ref4 = storageRef.child(pic[3])
        let ref5 = storageRef.child(pic[4])
        Pic1.sd_setImage(with: ref1)
        Pic2.sd_setImage(with: ref2)
        Pic3.sd_setImage(with: ref3)
        Pic4.sd_setImage(with: ref4)
        Pic5.sd_setImage(with: ref5)
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
