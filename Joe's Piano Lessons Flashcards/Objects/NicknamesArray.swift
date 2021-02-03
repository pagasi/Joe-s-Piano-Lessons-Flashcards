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
        let letter2: Letter = Letter(letterNickname: "Elephant E")
        let letter3: Letter = Letter(letterNickname: "Frisbee F")
        let letter4: Letter = Letter(letterNickname: "Splat Apple A")
            
        tempArray.append(letter0)
        tempArray.append(letter1)
        tempArray.append(letter2)
        tempArray.append(letter3)
        tempArray.append(letter4)
        
        return tempArray
    }
}
//MARK: TODO make it so createArray accounts for the Switches activated in NicknamesVC
