//
//  DefaultsModel.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 2/24/21.
//

import Foundation

struct DefaultsModel {
    var chosenArray: Int
    var ArrayOfLettersSwitchedOff: [Int]
    
    init(chosenArray:Int, ArrayOfLettersSwitchedOff:[Int]) {
        self.chosenArray = chosenArray
        self.ArrayOfLettersSwitchedOff = ArrayOfLettersSwitchedOff
    }
}
