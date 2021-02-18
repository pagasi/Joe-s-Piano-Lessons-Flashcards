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
        //cards in the house
        let letter0: Letter = Letter(letterNickname: "RH Cat C", letterSwitch: tempSwitch)
        let letter1: Letter = Letter(letterNickname: "Dangling D", letterSwitch: tempSwitch)
        let letter2: Letter = Letter(letterNickname: "Elephant E", letterSwitch: tempSwitch)
        let letter3: Letter = Letter(letterNickname: "Frisbee F", letterSwitch: tempSwitch)
        let letter4: Letter = Letter(letterNickname: "Splat Apple A", letterSwitch: tempSwitch)
        let letter5: Letter = Letter(letterNickname: "Apple A On the Ground A", letterSwitch: tempSwitch)
        let letter6: Letter = Letter(letterNickname: Constants.APPLE_A, letterSwitch: tempSwitch)
        let letter7: Letter = Letter(letterNickname: "Apple In The Chimney A", letterSwitch: tempSwitch)
        let letter8: Letter = Letter(letterNickname: "Apple On The Window Sill A", letterSwitch: tempSwitch)
        let letter9: Letter = Letter(letterNickname: "Bomb B", letterSwitch: tempSwitch)
        let letter10: Letter = Letter(letterNickname: "Bomber B", letterSwitch: tempSwitch)
        let letter11: Letter = Letter(letterNickname: "Bouncing Ball B", letterSwitch: tempSwitch)
        let letter12: Letter = Letter(letterNickname: "Dunkin D", letterSwitch: tempSwitch)
        let letter13: Letter = Letter(letterNickname: "Eyeball E", letterSwitch: tempSwitch)
        let letter14: Letter = Letter(letterNickname: "Giant or Giraffe G", letterSwitch: tempSwitch)
        let letter15: Letter = Letter(letterNickname: "Goat On The Roof G", letterSwitch: tempSwitch)
        let letter16: Letter = Letter(letterNickname: "Ground G", letterSwitch: tempSwitch)
        let letter17: Letter = Letter(letterNickname: "Roof F", letterSwitch: tempSwitch)
        
        
        
        
        tempArray.append(letter0)
        tempArray.append(letter1)
        tempArray.append(letter2)
        tempArray.append(letter3)
        tempArray.append(letter4)
        tempArray.append(letter5)
        tempArray.append(letter6)
        tempArray.append(letter7)
        tempArray.append(letter8)
        tempArray.append(letter9)
        tempArray.append(letter10)
        tempArray.append(letter11)
        tempArray.append(letter12)
        tempArray.append(letter13)
        tempArray.append(letter14)
        tempArray.append(letter15)
        tempArray.append(letter16)
        tempArray.append(letter17)
//        tempArray.append(letter18)
//        tempArray.append(letter19)
//        tempArray.append(letter20)
//        tempArray.append(letter21)
//        tempArray.append(letter22)
//        tempArray.append(letter23)
//        tempArray.append(letter24)
//        tempArray.append(letter25)
//        tempArray.append(letter26)
//        tempArray.append(letter27)
//        tempArray.append(letter28)
//        tempArray.append(letter29)
//        tempArray.append(letter30)
//        tempArray.append(letter31)
//        tempArray.append(letter32)
//        tempArray.append(letter33)
//        tempArray.append(letter34)
//        tempArray.append(letter35)
//        tempArray.append(letter36)
//        tempArray.append(letter37)
//        tempArray.append(letter38)
//        tempArray.append(letter39)
//        
        
        return tempArray
    }
}

