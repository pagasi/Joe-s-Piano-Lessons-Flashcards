//
//  Extensions.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 4/27/22.
//

import Foundation
import UIKit

//MARK: number extenS
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

//MARK: UIStackView extenS
//gets phone type from width of phone, returns [spacing, yAxisvariable]
extension UIStackView {
    func adjustForPhone() -> [CGFloat]{
        //SE 1st gen, 5C, 5S, 5
        if UIScreen.main.bounds.width == 320 || UIScreen.main.bounds.width == 568 {
            return [-10,0]
        }
        
        //13 mini, 12 mini, 11 pro, XS, X, SE 2nd, 8, 7, 6s, 6
        else if UIScreen.main.bounds.width == 375 || UIScreen.main.bounds.width == 812 || UIScreen.main.bounds.width == 667 {
            return [-10, 0]
        }
        
        //13, 13 pro, 12, 12 pro
        else if UIScreen.main.bounds.width == 390 || UIScreen.main.bounds.width == 844 {
            return [-10,0]
        }
        
        //13 pro max, 12 pro max, 11 pro max, 11, XR, XS Max, 8 plus
        else if UIScreen.main.bounds.width == 414 || UIScreen.main.bounds.width == 896 || UIScreen.main.bounds.width == 428 || UIScreen.main.bounds.width == 926 {
            return [-10,0]
        }
        
        //7 plus, 6s plus, 6 plus
        else if UIScreen.main.bounds.width == 476 || UIScreen.main.bounds.width == 847 || UIScreen.main.bounds.width == 736 {
                return [-10, 0]
            }
        
        //if screen is an ipad
         else if UIDevice.current.model == "iPad" {
             return [5,0]
        }
        //catch all, mini, future phones, etc
        else {
            return [-10,0]
        }
    }
}
