//
//  yellowGradient.swift
//  Hi_I_Am_Edward
//
//  Created by Edward Rodriguez on 4/4/18.
//  Copyright © 2018 Edward Rodriguez. All rights reserved.
//

import UIKit

@IBDesignable
class yellowGradient: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1){
        didSet {
            self.setNeedsLayout()
        }
    }
    // variable that can be changed inside the storyboard
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1){
        didSet {
            self.setNeedsLayout()
        }
    }
    
    //override function is called whenever we change one of the above NeedsLayout views
    override func layoutSubviews() {
        //3a. create a layer
        let gradientLayer = CAGradientLayer()
        
        //3b. set the layer colors, start + end points, and the frame
        gradientLayer.colors = [ topColor.cgColor, bottomColor.cgColor ]
        //doesn't have to be 2 colors, can be 3, 4, 5
        gradientLayer.startPoint = CGPoint(x: 0, y:0)
        gradientLayer.endPoint = CGPoint(x: 1, y:1)
        gradientLayer.frame = self.bounds
        //layer created ^
        self.layer.insertSublayer(gradientLayer, at: 0)
    }

}
