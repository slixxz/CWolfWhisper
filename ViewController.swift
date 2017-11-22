//
//  ViewController.swift
//  UserLoginAndRegistration
//
//  Created by student on 11/1/17.
//  Copyright © 2017 team SeaWolfWhisper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //https://www.youtube.com/watch?v=2kwCfFG5fDA

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        self.performSegue(withIdentifier: "loginView", sender: self)
        
    }

}

