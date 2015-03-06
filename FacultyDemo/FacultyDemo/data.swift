//
//  data.swift
//  customTableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getData() -> Array<balloon>{
        var tempArray = Array<balloon>()
        
        let b1 = balloon(bImage: UIImage(named: "cs.gif"), bName: "Computerscience")
        tempArray.append(b1)
        
        let b2 = balloon(bImage: UIImage(named: "is.gif"), bName: "information Science")
        tempArray.append(b2)
        return tempArray
    }
}
