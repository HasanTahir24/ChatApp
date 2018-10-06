//
//  StartVC.swift
//  ChatApp
//
//  Created by Hasan Tahir on 09/09/2018.
//  Copyright © 2018 Hasan Tahir. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
class StartVC: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    var ref : DatabaseReference?
    override func viewDidLoad() {
        super.viewDidLoad()
      Auth.auth().signInAnonymously(completion: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func Login(_ sender: Any) {
        Auth.auth().signInAnonymously(completion: nil)

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
