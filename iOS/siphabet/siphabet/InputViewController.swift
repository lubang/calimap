//
//  InputViewController.swift
//  siphabet
//
//  Created by 김대석 on 2016. 6. 11..
//  Copyright © 2016년 김대석. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {
    
    @IBOutlet var name: UITextField!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let resultViewController = segue.destinationViewController as? ResultViewController {
            resultViewController.name = name.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
