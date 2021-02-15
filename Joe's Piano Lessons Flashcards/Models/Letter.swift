//
//  Letter.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/27/21.
//

import Foundation
import UIKit

struct Letter {
    
   // var image: UIImage?
    var letterNickname: String
    var letterSwitch: UISwitch
    
    init(letterNickname: String, letterSwitch: UISwitch) {

        self.letterNickname = letterNickname
        self.letterSwitch = letterSwitch
    }
}
