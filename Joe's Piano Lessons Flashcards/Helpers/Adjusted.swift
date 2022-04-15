//
//  Adjusted.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 4/11/22.
//

import Foundation
import UIKit


//MARK: Device class
//This class allows different sized phones to adjust the size of their buttons to fit on the screen
class Device {
    // Base width in point, use iPhone 6
    static let base: CGFloat = 414
    static var ratio: CGFloat {
        //        print (UIScreen.main.bounds.width)
        if UIDevice.current.model == "iPad" {
            return 1
        } else {
            if UIScreen.main.bounds.width < UIScreen.main.bounds.height {
                return UIScreen.main.bounds.width / base
            } else {
                return UIScreen.main.bounds.height / base
            }
            
        }
    }
}


//MARK: number extensions
extension CGFloat {
    var adjusted: CGFloat {
        return self * Device.ratio
    }
}
extension Double {
    var adjusted: CGFloat {
        return CGFloat(self) * Device.ratio
    }
}
extension Int {
    var adjusted: CGFloat {
        return CGFloat(self) * Device.ratio
    }
}
