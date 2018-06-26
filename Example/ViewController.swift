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
    
    @IBAction func alertStyleExampleAction(_ sender: Any) {
        AlertController(title: "Alert Style", message: "This is AlertController", preferredStyle: UIAlertControllerStyle.alert)
            .addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
            .addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            .flash(from: self, animated: true, delay: 1, completion: nil)
    }
    
    @IBAction func actionSheetStyleExampleAction(_ sender: Any) {
        AlertController(title: "Action Sheet Style", message: "This is AlertController", preferredStyle: UIAlertControllerStyle.actionSheet)
            .addAction(UIAlertAction(title: "Item 1", style: UIAlertActionStyle.default, handler: nil))
            .addAction(UIAlertAction(title: "Item 2", style: UIAlertActionStyle.default, handler: nil))
            .addAction(UIAlertAction(title: "Item 3", style: UIAlertActionStyle.default, handler: nil))
            .addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
            .flash(from: self, animated: true, delay: 1, completion: nil)
    }
    
}

