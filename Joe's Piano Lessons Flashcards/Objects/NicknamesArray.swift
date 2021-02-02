//
//  NicknamesArray.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/27/21.
//

import Foundation

class NicknamesArray {
    
    func createArray() -> [Letter]{
        var tempArray: [Letter] = []
        
        let letter0: Letter = Letter(letterNickname: "Cat C")
        let letter1: Letter = Letter(letterNickname: "Dangling D")
            
        tempArray.append(letter0)
        tempArray.append(letter1)
        
        return tempArray
    }
}
//MARK: TODO make it so createArray accounts for the Switches activated in NicknamesVC
