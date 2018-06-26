//
//  ViewController.swift
//  AlertController
//
//  Created by vlang on 2018/6/26.
//  Copyright © 2018年 ImKcat. All rights reserved.
//

import UIKit
import AlertController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func exampleButtonAction(_ sender: Any) {
        AlertController(title: "This is AlertController", message: "Use UIAlertController like the boss", preferredStyle: UIAlertControllerStyle.alert)
            .addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
            .addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            .flash(from: self, animated: true)
    }


}

