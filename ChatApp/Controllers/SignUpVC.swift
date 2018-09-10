//
//  SignUpVC.swift
//  ChatApp
//
//  Created by Hasan Tahir on 09/09/2018.
//  Copyright © 2018 Hasan Tahir. All rights reserved.
//

import UIKit
import Firebase
class SignUpVC: UIViewController {
  
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var contactnumberTF: UITextField!
   
    @IBOutlet weak var repasswordTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    var ref : DatabaseReference?
    override func viewDidLoad() {
        super.viewDidLoad()
     ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CreateAccount(_ sender: Any) {
        let currentSerial = ref?.observe(.value, with: { (sn) in
            print(sn)
        })
//        print(currentSerial)
//        ref?.child("Current_Serial").setValue(["Current_Serial":currentSerial])
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
