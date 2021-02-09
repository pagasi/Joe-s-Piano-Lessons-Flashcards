//
//  NicknamesArray.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/27/21.
//

import UIKit

class NicknamesArray {
    var tempSwitch: UISwitch = UISwitch()
    
    func createArray() -> [Letter]{
        var tempArray: [Letter] = []
        
        let letter0: Letter = Letter(letterNickname: "Cat C", letterSwitch: tempSwitch)
        let letter1: Letter = Letter(letterNickname: "Dangling D", letterSwitch: tempSwitch)
        let letter2: Letter = Letter(letterNickname: "Elephant E", letterSwitch: tempSwitch)
        let letter3: Letter = Letter(letterNickname: "Frisbee F", letterSwitch: tempSwitch)
        let letter4: Letter = Letter(letterNickname: "Splat Apple A", letterSwitch: tempSwitch)
            
        tempArray.append(letter0)
        tempArray.append(letter1)
        tempArray.append(letter2)
        tempArray.append(letter3)
        tempArray.append(letter4)
        
        return tempArray
    }
}

