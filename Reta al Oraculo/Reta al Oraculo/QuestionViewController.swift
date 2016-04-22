//
//  QuestionViewController.swift
//  Reta al Oraculo
//
//  Created by user on 4/20/16.
//  Copyright © 2016 cubix. All rights reserved.
//

import UIKit
import AudioToolbox

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let choose = Int(arc4random_uniform(22))
        
        print(choose)
        print(Tools.questions[choose])
        Tools.selected = choose
        let question = Tools.questions[choose]["q"] as? String
        if (question?.characters.count > 120){
            questionLabel.font = UIFont.boldSystemFontOfSize(45.0)
        }
        
        questionLabel.text = question
        //SystemSoundID.playFileNamed("timer")

        
        
        // 1. lock the rotation
        let appdelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appdelegate.shouldRotate = false
        
        // 2. Force the device in landscape mode when the view controller gets loaded
        UIDevice.currentDevice().setValue(UIInterfaceOrientation.LandscapeRight.rawValue, forKey: "orientation")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func falseButtonTapped(sender: AnyObject) {
        validate()
    }

    @IBAction func trueButtonTapped(sender: AnyObject) {
        validate()
    }
    
    func validate(){
        if ((Tools.questions[Tools.selected]["validate"]) == true ){
            let next = self.storyboard?.instantiateViewControllerWithIdentifier("TrueViewController") as! TrueViewController
            self.presentViewController(next, animated: true, completion: nil)
        }else{
            let next = self.storyboard?.instantiateViewControllerWithIdentifier("FalseViewController") as! FalseViewController
            self.presentViewController(next, animated: true, completion: nil)
        }
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
     

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

