//
//  LoadingViewController.swift
//  siphabet
//
//  Created by 김대석 on 2016. 6. 29..
//  Copyright © 2016년 김대석. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {
    
    func showInputViewController() {
        performSegueWithIdentifier("showInputViewController", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        performSelector(#selector(LoadingViewController.showInputViewController), withObject: nil, afterDelay: 1.5)
    }
}