//
//  ViewController.swift
//  Reta al Oraculo
//
//  Created by user on 4/17/16.
//  Copyright © 2016 cubix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animate([ UIImage(named: "i-1")!, UIImage(named: "i-2")!, UIImage(named: "i-3")!, UIImage(named: "i-4")!, UIImage(named: "i-5")!, UIImage(named: "i-6")!])
        
        
        // 1. lock the rotation
        let appdelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appdelegate.shouldRotate = false
        
        // 2. Force the device in landscape mode when the view controller gets loaded
        UIDevice.currentDevice().setValue(UIInterfaceOrientation.LandscapeRight.rawValue, forKey: "orientation")


    }
    
    override func shouldAutorotate() -> Bool {
        // 3. Lock autorotate
        return false
    }
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return [UIInterfaceOrientationMask.LandscapeRight, UIInterfaceOrientationMask.LandscapeLeft]
    }
    
    
    override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
        
        // 4. Only allow Landscape
        return UIInterfaceOrientation.LandscapeRight
    }
     
    
    func animate(images: [UIImage], index: Int = 0) {
        print(index)
        UIView.transitionWithView(imageView, duration: 1, options: .TransitionCrossDissolve, animations: {
            self.imageView.image = images[index]
            }, completion: { value in
                let idx = index == images.count-1 ? 0 : index+1
                self.animate(images, index: idx)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

