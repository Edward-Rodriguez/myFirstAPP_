//  HomeScreen.swift
//  Hi_I_Am_Edward
//
//  Created by Edward Rodriguez on 4/3/18.
//  Copyright © 2018 Edward Rodriguez. All rights reserved.
//

import UIKit

class HomeScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindSegue(_ sender:UIStoryboardSegue){
        
    }
    
}
