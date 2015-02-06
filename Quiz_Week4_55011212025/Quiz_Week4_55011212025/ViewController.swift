//
//  ViewController.swift
//  Quiz_Week4_55011212025
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet weak var L1: UILabel!
    @IBOutlet weak var L2: UILabel!
    @IBOutlet weak var L3: UILabel!
    
    
    
    var sum1 = 0
    var sum2 = 0
    var sum3 = 0
    
    var sum = 0;
   
    @IBAction func AddOne(sender: AnyObject) {
        // เพิ่มทีล่ะ 1
       sum1 += 1
        L1.text = String(sum1)
        
    }
    @IBAction func AddTwo(sender: AnyObject) {
        // เพิ่มทีล่ะ 2
        sum2 += 2
        L2.text = String(sum2)
    }
    @IBAction func AddThree(sender: AnyObject) {
        // เพิ่มทีล่ะ 3
        sum3 += 3
        L3.text = String(sum3)
    }

    @IBAction func resetAll(sender: AnyObject) {
        // เคลียร์ข้อมูลทั้งหมด
        clear()
    }
    
    // ฟังก์ชันเคลียร์ข้อมูล
    func clear(){
        
        L1.text = "0"
        L2.text = "0"
        L3.text = "0"
        
        sum1 = 0
        sum2 = 0
        sum3 = 0
    }
}

