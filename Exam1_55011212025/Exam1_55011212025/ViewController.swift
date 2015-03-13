//
//  ViewController.swift
//  Exam1_55011212025
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate{

    @IBOutlet weak var subject: UITextField!
    @IBOutlet weak var midterm_set: UITextField!
    @IBOutlet weak var midterm_Score: UITextField!
    @IBOutlet weak var work_set: UITextField!
    @IBOutlet weak var work_Score: UITextField!
    @IBOutlet weak var final_set: UITextField!
    @IBOutlet weak var final_Score: UITextField!
    @IBOutlet weak var show: UITableView!
    @IBOutlet weak var ShowGrade: UILabel!
    
    var sortedKeys:[Double] = []
    var percen:[Double] = []
    var sub:[String] = []
    var Grades:[String] = []
    let cellIdentifier = "cellIdentifier"
    
    
    @IBAction func CalculateGrade(sender: UIButton) {
        sortedKeys.removeAll(keepCapacity: true)
        percen.removeAll(keepCapacity: true)
        sub.removeAll(keepCapacity: true)
        Grades.removeAll(keepCapacity: true)
        
        var pp = (x:5.0,y:10.0,z:-15.0)
        
        var num_MSet = midterm_set.text.toInt()
        var num_WSet = work_set.text.toInt()
        var num_Fset = final_set.text.toInt()
        var sumScore = SumScoreSet(num_MSet!,num2: num_WSet!,num3: num_Fset!)
        if(sumScore==0){
            AlertInputScore()
        }
        else{
            var subj = subject.text
            var Sc_mid = Double((midterm_Score.text as NSString).doubleValue)
            var Sc_work = Double((work_Score.text as NSString).doubleValue)
            var Sc_final = Double(( final_Score.text as NSString).doubleValue)
            
            var score = CalScore(Sc_mid, num2: Sc_work, num3: Sc_final)
            var gradeResult = Grade(score)
            ShowGrade.text = "Score : \(score) , Grade : \(gradeResult)"
            
            var per = [pp.x,pp.y,pp.z]
            for k1 in per {
                sub.append(subj) // Add Subject
                percen.append(k1)
                var SumScore = CalFinal(Sc_mid, num2: Sc_work, num3: Sc_final, perc: k1)
                sortedKeys.append(SumScore) // Add Score
                var resultGrade = Grade(SumScore)
                Grades.append(resultGrade)
            }
            
            show.reloadData()
        }
    }
    
    func CalFinal(num1:Double,num2:Double,num3:Double,perc:Double) ->Double{
        return num1+num2+(num3*((100.00-perc)/100.00))
        
    }
    
    func CalScore(num1:Double,num2:Double,num3:Double) -> Double{
        return num1+num2+num3
    }
    
       
    func SumScoreSet(num1:Int,num2:Int,num3:Int) -> Int{
        var result = 0
        var sum = num1+num2+num3
        if(sum==100){
            result = 1
        }
        else{
            result = 0
        }
        return result
    }
    
    func Grade(score:Double) -> String{
        var result:String = ""
        if(score>=80){
            result = "A"
        }
        else if(score>=74){
            result = "B+"
        }
        else if(score>=68){
            result = "B"
        }
        else if(score>=62){
            result = "C+"
        }
        else if(score>=56){
            result = "C"
        }
        else if(score>=50){
            result = "D+"
        }
        else if(score>=44){
            result = "D"
        }
        else{
            result = "F"
        }
        return result
    }
    
    func AlertInputScore(){
        let message = "Error input Score Midterm+Work+final != 100"
        let alert = UIAlertController(title: "Error input", message: message, preferredStyle: .Alert)
        let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(okButton)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        show.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortedKeys.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //
        let cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        ///
        
        let a = sub[indexPath.row]
        let b = percen[indexPath.row]
        let c = sortedKeys[indexPath.row]
        let d = Grades[indexPath.row]
        cell.textLabel?.text = "S: \(a) "
        cell.detailTextLabel?.text = " < \(b)% :  Score : \(c) , Grade : \(d)"
        return cell
    }
    


}


