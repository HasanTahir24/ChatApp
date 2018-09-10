//
//  RoundButton.swift
//  
//
//  Created by Techsviewer on 9/8/18.
//

import UIKit

@IBDesignable class RoundButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }
    
    func sharedInit() {
        // Common logic goes here
        
        refreshCorner(value:cornerRadius)
    }
    
    @IBInspectable var cornerRadius: CGFloat = 15 {
        didSet {
            refreshCorners(value: cornerRadius)
            }
        }
    
    
    func refreshCorner (value : CGFloat){
       layer.cornerRadius=value
        
    }
}


