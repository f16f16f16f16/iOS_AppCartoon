//
//  ViewController.swift
//  APP_Final_Project_051_316
//
//  Created by Nontaphat Pongpis on 12/11/2564 BE.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseCore
import FirebaseStorage
import FirebaseFirestore

class ViewController: UIViewController {
    var bgAll = ""
    var picAll = ""

    @IBAction func kotoriBTN1(_ sender: Any) {
        bgAll="torikobg.jpeg"
        picAll="toriko"
    }
    
    @IBAction func chainBTN(_ sender: Any) {
        bgAll="chainbg.jpeg"
        picAll="chain"
    }
    
    @IBAction func jojoBTN(_ sender: Any) {
        bgAll="Dragonballkid.jpeg"
        picAll="dragonballkid"
    }
    
    @IBAction func familyXspyBTN1(_ sender: Any) {
        bgAll="spybg.jpeg"
        picAll="spy"
    }
    
    @IBAction func myheroBTN(_ sender: Any) {
        bgAll="myherobg.jpeg"
        picAll="myhero"
    }
    
    @IBAction func hunxhunBTN(_ sender: Any) {
        bgAll="hunxhunbg.jpeg"
        picAll="hunxhun"
    }
    
    @IBAction func narutoBTN(_ sender: Any) {
        bgAll="narutobg.jpeg"
        picAll="naruto"
    }
    
    @IBAction func onepieceBTN(_ sender: Any) {
        bgAll="onepiecebg.jpeg"
        picAll="onepiece"
    }
    
    @IBAction func kimesuyaibaBTN(_ sender: Any) {
        bgAll="yaibabg.png"
        picAll="yaiba"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller
        
        if segue.identifier == "passdata" {
            let vc = segue.destination as! CartoonVC
            vc.bg=bgAll
            vc.pic=picAll
            
        }

            
        }
}

