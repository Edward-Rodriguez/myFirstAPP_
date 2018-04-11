//
//  spotGradient.swift
//  Hi_I_Am_Edward
//
//  Created by Edward Rodriguez on 4/4/18.
//  Copyright © 2018 Edward Rodriguez. All rights reserved.
//

import UIKit

@IBDesignable
class spotGradient: UIView {
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.5176470588, green: 0.368627451, blue: 0.7607843137, alpha: 1){
        didSet {
            self.setNeedsLayout()
        }
    }
    // variable that can be changed inside the storyboard
    
    @IBInspectable var secondColor: UIColor = #colorLiteral(red: 0.7019607843, green: 0.6117647059, blue: 0.8156862745, alpha: 1){
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var thirdColor: UIColor = #colorLiteral(red: 0.9843137255, green: 0.9176470588, blue: 1, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0, green: 0.7882352941, blue: 0.6549019608, alpha: 1){
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
        gradientLayer.startPoint = CGPoint(x: 0.1, y:1)
        gradientLayer.endPoint = CGPoint(x: 1.0, y:0)
        gradientLayer.frame = self.bounds
        //layer created ^
        self.layer.insertSublayer(gradientLayer, at: 0)
    }

}
