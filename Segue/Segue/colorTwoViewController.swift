//
//  colorTwoViewController.swift
//  Segue
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

protocol ColorTwoViewControllerDelegate{
    func myVCDidFinish(controller:ColorTwoViewControllerDelegate,text:String)
}

class colorTwoViewController: UIViewController {
    
    var delegate:ColorTwoViewControllerDelegate? = nil
    var colorString = ""
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorLabel.text = colorString
    }

    @IBAction func saveColor(sender: UIBarButtonItem) {
        if(delegate != nil){
            delegate!.myVCDidFinish(self, text: colorLabel!.text!)
        }
    }
    
    @IBAction func colorSelectionButton(sender: UIButton) {
        colorLabel.text = sender.titleLabel!.text!
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
