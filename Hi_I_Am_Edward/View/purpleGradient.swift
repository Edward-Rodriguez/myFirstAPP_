//
//  purpleGradient.swift
//  Hi_I_Am_Edward
//
//  Created by Edward Rodriguez on 4/4/18.
//  Copyright © 2018 Edward Rodriguez. All rights reserved.
//

import UIKit

@IBDesignable
class purpleGradient: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.5176470588, green: 0.368627451, blue: 0.7607843137, alpha: 1){
        didSet {
            self.setNeedsLayout()
        }
    }
    // variable that can be changed inside the storyboard
    
    @IBInspectable var secondColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.4509803922, blue: 0.8235294118, alpha: 1){
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var thirdColor: UIColor = #colorLiteral(red: 0, green: 0.5058823529, blue: 0.8117647059, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var fourthColor: UIColor = #colorLiteral(red: 0, green: 0.537254902, blue: 0.7294117647, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var fifthColor: UIColor = #colorLiteral(red: 0, green: 0.5568627451, blue: 0.6078431373, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0, green: 0.5607843137, blue: 0.4784313725, alpha: 1){
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
