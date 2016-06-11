//
//  ViewController.swift
//  siphabet
//
//  Created by 김대석 on 2016. 6. 11..
//  Copyright © 2016년 김대석. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var name: UITextField!
    @IBOutlet var result: UILabel!
    
    @IBAction func clickOk() {
        result.text = name.text
    }
    
}
