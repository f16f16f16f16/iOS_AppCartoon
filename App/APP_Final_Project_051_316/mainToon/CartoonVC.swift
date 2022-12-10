//
//  CartoonVC.swift
//  APP_Final_Project_051_316
//
//  Created by Nontaphat Pongpis on 12/11/2564 BE.
//

import UIKit
import Photos
import Firebase
import FirebaseStorage
import FirebaseStorageUI

class CartoonVC: UIViewController{
    let chainsaw=["chain1.png","chain2.png","chain3.png","chain4.png","chain5.png"]
    let hunxhun=["hunxhun1.jpg","hunxhun2.jpg","hunxhun3.jpg","hunxhun4.jpg","hunxhun5.jpg"]
    let toriko=["Toriko1.jpg","Toriko2.jpg","Toriko3.jpg","Toriko4.jpg","Toriko5.jpg"]
    let yaiba=["Yaiba1.jpg","Yaiba2.jpg","Yaiba3.png","Yaiba4.png","Yaiba5.png"]
    let hero=["HMA1.jpg","HMA2.jpg","HMA3.jpg","HMA4.jpg","HMA5.jpg"]
    let spyxfam=["SXF1.jpeg","SXF2.jpeg","SXF3.jpeg","SXF4.jpeg","SXF5.jpeg"]
    let onepiece=["OP1.jpeg","OP2.jpeg","OP3.jpeg","OP4.jpeg","OP5.jpeg"]
    let naruto=["Naruto1.jpeg","Naruto2.jpeg","Naruto3.jpeg","Naruto4.jpeg","Naruto5.jpeg"]
    let DB=["DGB1.jpeg","DGB2.jpeg","DGB3.jpeg","DGB4.jpeg","DGB5.jpeg"]
    let ref = Database.database().reference()

    

    
    
    @IBAction func favo(_ sender: Any) {
        if let image = UIImage(named: "starfill") {
            btnfavo.setImage(image, for: .normal)
            
        }
        
    }
    

    @IBOutlet weak var btnfavo: UIButton!
    @IBOutlet weak var showname: UILabel!
    @IBOutlet weak var showbg: UIImageView!
    @IBOutlet weak var showStory: UILabel!
    var bg = ""
    var pic = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        showbg.image=UIImage.init(named: bg)
        getName()
        // Do any additional setup after loading the view.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "passfavo" {
            let vc = segue.destination as! myCartoonVC
            vc.pictoon=pic
        }
        if segue.identifier == "passpic" {
            let vc = segue.destination as! ShowPicToonViewController
            if bg == "chainbg.jpeg" {
                vc.pic=chainsaw
            }
            if bg == "torikobg.jpeg" {
                vc.pic=toriko
            }
            if bg == "hunxhunbg.jpeg" {
                vc.pic=hunxhun
            }
            if bg == "spybg.jpeg" {
                vc.pic=spyxfam
            }
            if bg == "myherobg.jpeg" {
                vc.pic=hero
            }
            if bg == "narutobg.jpeg" {
                vc.pic=naruto
            }
            if bg == "onepiecebg.jpeg" {
                vc.pic=onepiece
            }
            if bg == "yaibabg.png" {
                vc.pic=yaiba
            }
            if bg == "Dragonballkid.jpeg" {
                vc.pic=DB
            }
        }
    }
    
    func getName() {
        //แสดงชื่อและเรื่องย่อของ Toriko
        if bg == "torikobg.jpeg"{
            ref.child("cartoon").child("toriko").child("name").observeSingleEvent(of: .value, with: { snapshot in
                let name = snapshot.value as! String
                self.showname.text! = name
                
            })
            ref.child("cartoon").child("toriko").child("story").observeSingleEvent(of: .value, with: { snapshot in
                let story = snapshot.value as! String
                self.showStory.text! = story
            })
        }
        //แสดงชื่อและเรื่องย่อของ Chainsaw Man
        if bg == "chainbg.jpeg"{
            ref.child("cartoon").child("chain").child("name").observeSingleEvent(of: .value, with: { snapshot in
                let name = snapshot.value as! String
                self.showname.text! = name
                
            })
            ref.child("cartoon").child("chain").child("story").observeSingleEvent(of: .value, with: { snapshot in
                let story = snapshot.value as! String
                self.showStory.text! = story
            })
        }
        //แสดงชื่อและเรื่องย่อของ Dragon Ball
        if bg == "Dragonballkid.jpeg"{
            ref.child("cartoon").child("dbz").child("name").observeSingleEvent(of: .value, with: { snapshot in
                let name = snapshot.value as! String
                self.showname.text! = name
                
            })
            ref.child("cartoon").child("dbz").child("story").observeSingleEvent(of: .value, with: { snapshot in
                let story = snapshot.value as! String
                self.showStory.text! = story
            })
        }
        //แสดงชื่อและเรื่องย่อของ Hunter X Hunter
        if bg == "hunxhunbg.jpeg"{
            ref.child("cartoon").child("hunxhun").child("name").observeSingleEvent(of: .value, with: { snapshot in
                let name = snapshot.value as! String
                self.showname.text! = name
                
            })
            ref.child("cartoon").child("hunxhun").child("story").observeSingleEvent(of: .value, with: { snapshot in
                let story = snapshot.value as! String
                self.showStory.text! = story
            })
        }
        //แสดงชื่อและเรื่องย่อของ Naruto
        if bg == "narutobg.jpeg"{
            ref.child("cartoon").child("naruto").child("name").observeSingleEvent(of: .value, with: { snapshot in
                let name = snapshot.value as! String
                self.showname.text! = name
                
            })
            ref.child("cartoon").child("naruto").child("story").observeSingleEvent(of: .value, with: { snapshot in
                let story = snapshot.value as! String
                self.showStory.text! = story
            })
        }
        //แสดงชื่อและเรื่องย่อของ One piece
        if bg == "onepiecebg.jpeg"{
            ref.child("cartoon").child("op").child("name").observeSingleEvent(of: .value, with: { snapshot in
                let name = snapshot.value as! String
                self.showname.text! = name
                
            })
            ref.child("cartoon").child("op").child("story").observeSingleEvent(of: .value, with: { snapshot in
                let story = snapshot.value as! String
                self.showStory.text! = story
            })
        }
        //แสดงชื่อและเรื่องย่อของ Spy X Family
        if bg == "spybg.jpeg"{
            ref.child("cartoon").child("sxf").child("name").observeSingleEvent(of: .value, with: { snapshot in
                let name = snapshot.value as! String
                self.showname.text! = name
                
            })
            ref.child("cartoon").child("sxf").child("story").observeSingleEvent(of: .value, with: { snapshot in
                let story = snapshot.value as! String
                self.showStory.text! = story
            })
        }
        //แสดงชื่อและเรื่องย่อของ Kimetsu no Yaiba
        if bg == "yaibabg.png"{
            ref.child("cartoon").child("yaiba").child("name").observeSingleEvent(of: .value, with: { snapshot in
                let name = snapshot.value as! String
                self.showname.text! = name
                
            })
            ref.child("cartoon").child("yaiba").child("story").observeSingleEvent(of: .value, with: { snapshot in
                let story = snapshot.value as! String
                self.showStory.text! = story
            })
        }
        //แสดงชื่อและเรื่องย่อของ My Hero Academy
        if bg == "myherobg.jpeg"{
            ref.child("cartoon").child("hero").child("name").observeSingleEvent(of: .value, with: { snapshot in
                let name = snapshot.value as! String
                self.showname.text! = name
                
            })
            ref.child("cartoon").child("hero").child("story").observeSingleEvent(of: .value, with: { snapshot in
                let story = snapshot.value as! String
                self.showStory.text! = story
            })
        }
        
    }
    
    // MARK: - Navigation

    

    

}
