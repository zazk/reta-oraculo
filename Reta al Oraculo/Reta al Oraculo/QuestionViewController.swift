//
//  QuestionViewController.swift
//  Reta al Oraculo
//
//  Created by user on 4/20/16.
//  Copyright © 2016 cubix. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let choose = Int(arc4random_uniform(23))
        
        print(choose)
        print(Tools.questions[choose])
        Tools.selected = choose
        
        questionLabel.text = Tools.questions[choose]["q"] as? String
        
        if ((Tools.questions[choose]["validate"]) == true ){
            let next = self.storyboard?.instantiateViewControllerWithIdentifier("TrueViewController") as! TrueViewController
            self.presentViewController(next, animated: true, completion: nil)
        }else{
            let next = self.storyboard?.instantiateViewControllerWithIdentifier("FalseViewController") as! FalseViewController
            self.presentViewController(next, animated: true, completion: nil)
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

