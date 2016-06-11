//
//  ViewController.swift
//  siphabet
//
//  Created by 김대석 on 2016. 6. 11..
//  Copyright © 2016년 김대석. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {
    
    let imageUrl = NSURL(string:"https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2014/11/14/1415979995987/c7dbed8a-6f29-4afe-90d8-503d5093dd6d-1020x574.jpeg?w=720&q=55&auto=format&usm=12&fit=max&s=351f0363b5c89faccbf76ca987b3ef17")
    @IBOutlet var name: UITextField!
    @IBOutlet var result: UILabel!
    @IBOutlet var facebookShare: UIButton!
    @IBOutlet var imageView: UIImageView!
    
    @IBAction func clickOk() {
        result.text = name.text
        facebookShare.hidden = false
        
        let data = NSData(contentsOfURL: imageUrl!)
        imageView.image = UIImage(data: data!)
    }
    
    @IBAction func clickFacebookShare() {
        let composeSheet = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        composeSheet.setInitialText("Share satellite images for your name!!")
        composeSheet.addURL(imageUrl)
        
        presentViewController(composeSheet, animated: true, completion: nil)
    }
}
