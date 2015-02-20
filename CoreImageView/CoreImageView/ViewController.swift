//
//  ViewController.swift
//  CoreImageView
//
//  Created by iStudents on 2/20/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import AssetsLibrary

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
        self.imageView.image = newImage
        
        self.logAllfilters()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func logAllfilters(){
        let properties = CIFilter.filterNamesInCategory(kCICategoryBuiltIn)
        println(properties)
        
        for filterName: AnyObject in properties{
            let fltr = CIFilter(name: filterName as String)
            println(fltr.attributes())
        }
    }
    
    func oldPhoto(img:CIImage, withAmount intensity:Float) -> CIImage{
        // 1
        let sepia = CIFilter(name: "CISepiaTone")
        sepia.setValue(img, forKey: kCIInputImageKey)
        sepia.setValue(intensity, forKey: "inputIntensity")
        
        // 2
        let random = CIFilter(name: "CIRandomGenerator")
        
        // 3
        let lighten = CIFilter(name: "CIColorControls")
        lighten.setValue(random.outputImage, forKey:  kCIInputImageKey)
        lighten.setValue(1-intensity, forKey: "inputBrightness")
        lighten.setValue(0, forKey: "inputSaturation")
        
        
        // 4 
        let croppedImage = lighten.outputImage.imageByCroppingToRect(beginImage.extent())
        
        // 5 
        let composite = CIFilter(name: "CIHardLightBlendMode")
    }


}

