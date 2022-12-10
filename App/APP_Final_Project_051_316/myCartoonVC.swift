//
//  myCartoonVC.swift
//  APP_Final_Project_051_316
//
//  Created by Nontaphat Pongpis on 27/11/2564 BE.
//

import UIKit

class myCartoonVC: UIViewController {
    var pictoon=""
    
    @IBAction func btn1ac(_ sender: Any) {
        
    }
    @IBOutlet weak var btn1: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(pictoon)

        if pictoon.isEmpty == false {
            print("true")
            btn1.setImage(UIImage(named: pictoon), for: .normal)

            btn1.isHidden = false

        // Do any additional setup after loading the view.
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
