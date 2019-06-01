//
//  LoadingViewController.swift
//  siphabet
//
//  Created by 김대석 on 2016. 6. 29..
//  Copyright © 2016년 김대석. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    
    func showInputViewController() {
        performSegueWithIdentifier("showInputViewController", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animateWithDuration(0.5, animations: {
            self.image.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
        })
        
        UIView.animateWithDuration(0.5, delay: 0.45, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.image.transform = CGAffineTransformMakeRotation(CGFloat(M_PI * 2))
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.95, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.image.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 1.45, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.image.transform = CGAffineTransformMakeRotation(CGFloat(M_PI * 2))
            }, completion: nil)
        
        performSelector(#selector(LoadingViewController.showInputViewController), withObject: nil, afterDelay: 1.5)
    }
}