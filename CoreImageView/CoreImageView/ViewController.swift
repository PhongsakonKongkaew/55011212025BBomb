//
//  ViewController.swift
//  CoreImageView
//
//  Created by iStudents on 2/20/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var UIImageCiew: UIImageView!
    
    var context:CIContext!
    var filter: CIFilter!
    var beginImage: CIImage!
    var orientation: UIImageOrientation = .Up // New
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 1
        let fileURL = NSBundle.mainBundle().URLForResource("image", withExtension: "png")
        
        // 2 
        beginImage = CIImage(contentsOfURL: fileURL)
        
        // 3
        filter = CIFilter(name: "CISepiaTone")
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        filter.setValue(0.5, forKey: kCIInputIntensityKey)
        let outputImage = filter.outputImage
        
        // 1 
        context = CIContext(options: nil)
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        
        // 2
        let newImage = UIImage(CGImage: cgimg!)
        self.UIImageCiew.image = newImage
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

