//
//  ViewController.swift
//  HoroscopoChino
//
//  Created by user164187 on 2/17/20.
//  Copyright © 2020 Salvador gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func navigationToDatetimeViewTapGesture(_ sender: Any) {
        performSegue(withIdentifier: "dateTimeSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

