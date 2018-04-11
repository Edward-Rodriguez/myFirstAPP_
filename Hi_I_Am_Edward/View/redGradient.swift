//
//  redGradient.swift
//  Hi_I_Am_Edward
//
//  Created by Edward Rodriguez on 4/4/18.
//  Copyright © 2018 Edward Rodriguez. All rights reserved.
//

import UIKit

@IBDesignable
class redGradient: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.9254902005, green: 0.6418739555, blue: 0.6424154866, alpha: 1){
        didSet {
            self.setNeedsLayout()
        }
    }
    // variable that can be changed inside the storyboard
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1){
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
