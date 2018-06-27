//
//  ViewController.swift
//  CatAlertController
//
//  Created by vlang on 2018/6/26.
//  Copyright © 2018年 ImKcat. All rights reserved.
//

import UIKit
import CatAlertController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func alertPopupExampleAction(_ sender: Any) {
        CatAlertController(title: "Popup", message: "Alert Popup Example", preferredStyle: UIAlertControllerStyle.alert)
            .flash(from: self, animated: true, delay: 1, completion: nil)
    }
    
    @IBAction func alertStyleFlashExampleAction(_ sender: Any) {
        CatAlertController(title: "Alert", message: "Alert Style Flash Example", preferredStyle: UIAlertControllerStyle.alert)
            .addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
            .addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            .flash(from: self, animated: true, delay: 1, completion: nil)
    }
    
    @IBAction func alertStyleExampleAction(_ sender: Any) {
        CatAlertController(title: "Alert", message: "Alert Style Example", preferredStyle: UIAlertControllerStyle.alert)
            .addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
            .addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            .present(from: self, animated: true)
    }
    
    @IBAction func actionSheetStyleFlashExampleAction(_ sender: Any) {
        CatAlertController(title: "Action Sheet", message: "Action Sheet Style Flash Example", preferredStyle: UIAlertControllerStyle.actionSheet)
            .addAction(UIAlertAction(title: "Item 1", style: UIAlertActionStyle.default, handler: nil))
            .addAction(UIAlertAction(title: "Item 2", style: UIAlertActionStyle.default, handler: nil))
            .addAction(UIAlertAction(title: "Item 3", style: UIAlertActionStyle.default, handler: nil))
            .addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
            .flash(from: self, animated: true, delay: 1, completion: nil)
    }
    
    @IBAction func actionSheetStyleExampleAction(_ sender: Any) {
        CatAlertController(title: "Action Sheet", message: "Action Sheet Style Example", preferredStyle: UIAlertControllerStyle.actionSheet)
            .addAction(UIAlertAction(title: "Item 1", style: UIAlertActionStyle.default, handler: nil))
            .addAction(UIAlertAction(title: "Item 2", style: UIAlertActionStyle.default, handler: nil))
            .addAction(UIAlertAction(title: "Item 3", style: UIAlertActionStyle.default, handler: nil))
            .addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
            .present(from: self, animated: true)
    }
    
}

