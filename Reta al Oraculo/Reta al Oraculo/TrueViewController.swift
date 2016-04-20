//
//  TrueViewController.swift
//  Reta al Oraculo
//
//  Created by user on 4/20/16.
//  Copyright © 2016 cubix. All rights reserved.
//

import UIKit

class TrueViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let answer = Tools.questions[Tools.selected]["a"] as? String
        if (answer?.characters.count > 140){
            answerLabel.font = UIFont.boldSystemFontOfSize(35.0)
        }
        if (answer?.characters.count > 180){
            answerLabel.font = UIFont.boldSystemFontOfSize(27.0)
        }
        answerLabel.text = answer
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
