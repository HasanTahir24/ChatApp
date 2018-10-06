//
//  SignUpVC.swift
//  ChatApp
//
//  Created by Hasan Tahir on 09/09/2018.
//  Copyright © 2018 Hasan Tahir. All rights reserved.
//

import UIKit
import Firebase
import CountryPickerView
class SignUpVC: UIViewController {
  
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var contactnumberTF: UITextField!
   
    @IBOutlet weak var repasswordTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    var ref : DatabaseReference?
    var currentSerial:Int?
    override func viewDidLoad() {
        super.viewDidLoad()
   //  customizePhoneTF()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CreateAccount(_ sender: Any) {
//        ref = Database.database().reference()
//        ref?.child(contactnumberTF.text!).setValue(["Username":usernameTF.text,"Password":passwordTF.text!])
        
//        print(currentSerial)
//        ref?.child("Current_Serial").setValue(["Current_Serial":currentSerial])
    }
    
    func customizePhoneTF(){
        let cpv = CountryPickerView(frame: CGRect(x: 0, y: 0, width: 120, height: contactnumberTF.frame.height - 5))
        contactnumberTF.leftView = cpv
        contactnumberTF.leftViewMode = .always
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
