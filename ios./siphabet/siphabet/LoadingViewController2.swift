//
//  LoadingViewContoller.swift
//  siphabet
//
//  Created by 김대석 on 2016. 6. 29..
//  Copyright © 2016년 김대석. All rights reserved.
//

import UIKit

class LoadingViewController2: UIViewController {
    
    @IBOutlet weak var progress1: UIImageView!
    
    @IBOutlet weak var progress2: UIImageView!
    
    @IBOutlet weak var progress3: UIImageView!
    
    func showInputViewController() {
        performSegueWithIdentifier("showResultViewController", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progress1.alpha = 0
        progress2.alpha = 0
        progress3.alpha = 0
        
        UIView.animateWithDuration(0.5, delay: 0.45, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.progress1.alpha = 1
            }, completion: nil)
        
        performSelector(#selector(LoadingViewController2.showInputViewController), withObject: nil, afterDelay: 3)
    }

}