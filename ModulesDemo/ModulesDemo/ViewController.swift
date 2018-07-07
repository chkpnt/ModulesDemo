//
//  ViewController.swift
//  ModulesDemo
//
//  Created by Gregor Dschung on 07.07.18.
//  Copyright © 2018 Gregor Dschung. All rights reserved.
//

import UIKit
import ModulesDemoStaticLib

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = SwiftClassInStaticModule().someString
        label2.text = SwiftClassInStaticModule().stringFromObjcClass
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

