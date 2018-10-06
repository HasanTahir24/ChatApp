//
//  Authentication.swift
//  emergencycallapp(DriverSide)
//
//  Created by Hasan on 7/4/18.
//  Copyright © 2018 Hasan. All rights reserved.
//


import FirebaseAuth
struct Authentication{

    static var shared = Authentication()
    
    static func userVerification(verificationCode: String) -> String {
        let verificationID = UserDefaults.standard.string(forKey: "authVerificationID")!
        var message="numberverified"
        let credential = PhoneAuthProvider.provider().credential(
            withVerificationID: verificationID,
            verificationCode: verificationCode)
        Auth.auth().signIn(with: credential) { (user, error) in
            if  error == nil {
                
            message="numberverified"
                // return
                print(message)
            }
            else{
                message = "Incorrect verification code"
                 print(message)
            }
            
            // User is signed in
            // ...
        }
        
        return message
        
    }
    
    static func sendverificationcode(){
//        PhoneAuthProvider.provider().verifyPhoneNumber(UserDetails.driverphonenumber, uiDelegate: nil) { (verificationID, error) in
//            if let error = error {
//                print(error.localizedDescription)
//                return
//            }
//            // Sign in using the verificationID and the code sent to the user
//            // ...
//            UserDefaults.standard.set(verificationID, forKey: "authVerificationID")
//            UserDefaults.standard.synchronize()            }
        
    }


}
