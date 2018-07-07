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

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = SwiftClassInStaticModule().someString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

