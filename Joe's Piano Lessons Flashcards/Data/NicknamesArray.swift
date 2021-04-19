//
//  NicknamesArray.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/27/21.
//

import UIKit

class NicknamesArray {
    var tempSwitch: UISwitch = UISwitch()
    
//   createArray is a func that returns the deck requested by the user or all letters if none was selected.  these will be displayed on the nicknames View Controller to either edit the deck further or run the deck
    
    func createArray(chosenArray:Int) -> [Letter]{
        var tempArray: [Letter] = []
        var tempArray2: [Letter] = []
        
        
        //MARK: create the letters
        //        FF level B
        let letter0: Letter = Letter(letterNickname: Constants.LH_CAT_C, letterSwitch: tempSwitch)
        let letter1: Letter = Letter(letterNickname: Constants.RH_CAT_C, letterSwitch: tempSwitch)
        let letter2: Letter = Letter(letterNickname: Constants.DANGLING_D, letterSwitch: tempSwitch)
        let letter3: Letter = Letter(letterNickname: Constants.ELEPHANT_E, letterSwitch: tempSwitch)
        let letter4: Letter = Letter(letterNickname: Constants.APPLE_A, letterSwitch: tempSwitch)
        let letter5: Letter = Letter(letterNickname: Constants.BEACH_B, letterSwitch: tempSwitch)
        let letter6: Letter = Letter(letterNickname: Constants.GIANT_OR_GIRAFFE_G, letterSwitch: tempSwitch)
        let letter7: Letter = Letter(letterNickname: Constants.FRISBEE_F, letterSwitch: tempSwitch)
        let letter8: Letter = Letter(letterNickname: Constants.TREBLE_G, letterSwitch: tempSwitch)
        let letter9: Letter = Letter(letterNickname: Constants.BASS_F, letterSwitch: tempSwitch)
        let letter10: Letter = Letter(letterNickname: Constants.LOW_KISSING_COUSIN_C, letterSwitch: tempSwitch)
        let letter11: Letter = Letter(letterNickname: Constants.HIGH_KISSING_COUSIN_C, letterSwitch: tempSwitch)
        let letter12: Letter = Letter(letterNickname: Constants.D_DIVIDES_D, letterSwitch: tempSwitch)
        let letter13: Letter = Letter(letterNickname: Constants.EYEBALL_E, letterSwitch: tempSwitch)
        let letter14: Letter = Letter(letterNickname: Constants.SPLAT_APPLE_A, letterSwitch: tempSwitch)
        //FF level 1
        let letter15: Letter = Letter(letterNickname: Constants.ELEVATOR_E, letterSwitch: tempSwitch)
        let letter16: Letter = Letter(letterNickname: Constants.DUNKIN_D, letterSwitch: tempSwitch)
        let letter17: Letter = Letter(letterNickname: Constants.ROOF_F, letterSwitch: tempSwitch)
        let letter18: Letter = Letter(letterNickname: Constants.GOAT_ON_THE_ROOF_G, letterSwitch: tempSwitch)
        let letter19: Letter = Letter(letterNickname: Constants.B_BREAKS_B, letterSwitch: tempSwitch)
        let letter20: Letter = Letter(letterNickname: Constants.GROUND_G, letterSwitch: tempSwitch)
        let letter21: Letter = Letter(letterNickname: Constants.APPLE_A_ON_THE_GROUND_A, letterSwitch: tempSwitch)
        let letter22: Letter = Letter(letterNickname: Constants.BOUNCING_BALL_B, letterSwitch: tempSwitch)
        //FF level 2A
        let letter23: Letter = Letter(letterNickname: Constants.BURIED_GUY_B, letterSwitch: tempSwitch)
        let letter24: Letter = Letter(letterNickname: Constants.DEAD_GUY_D, letterSwitch: tempSwitch)
        let letter25: Letter = Letter(letterNickname: Constants.GREAT_SECOND_KISSING_COUSIN_C, letterSwitch: tempSwitch)
        let letter26: Letter = Letter(letterNickname: Constants.C3_SECOND_KISSING_COUSIN_C, letterSwitch: tempSwitch)
        let letter27: Letter = Letter(letterNickname: Constants.FISH_F, letterSwitch: tempSwitch)
        //16 sec deck
        let letter28: Letter = Letter(letterNickname: Constants.BOMBER_B, letterSwitch: tempSwitch)
        let letter29: Letter = Letter(letterNickname: Constants.BOMB_B, letterSwitch: tempSwitch)
        let letter30: Letter = Letter(letterNickname: Constants.HIGH_DIVER_D, letterSwitch: tempSwitch)
        let letter31: Letter = Letter(letterNickname: Constants.GREAT_DIVER_D, letterSwitch: tempSwitch)
        let letter32: Letter = Letter(letterNickname: Constants.APPLE_IN_THE_CHIMNEY_A, letterSwitch: tempSwitch)
        let letter33: Letter = Letter(letterNickname: Constants.APPLE_ON_THE_WINDOW_SILL_A, letterSwitch: tempSwitch)
        let letter34: Letter = Letter(letterNickname: Constants.CHEATER_F, letterSwitch: tempSwitch)
        let letter35: Letter = Letter(letterNickname: Constants.GOODIE_TWO_SHOES_G, letterSwitch: tempSwitch)
        let letter36: Letter = Letter(letterNickname: Constants.LH_ELEPHANT_E, letterSwitch: tempSwitch)
        let letter37: Letter = Letter(letterNickname: Constants.GREAT_ELEPHANT_E, letterSwitch: tempSwitch)
        
        //MARK: fill arrays
        //        fill tempArray1 for ease of access to the letters in an array
        tempArray.append(contentsOf:[letter0, letter1, letter2, letter3, letter4, letter5, letter6, letter7, letter8, letter9, letter10, letter11, letter12, letter13, letter14, letter15, letter16, letter17, letter18, letter19, letter20, letter21, letter22, letter23, letter24, letter25, letter26, letter27, letter28, letter29, letter30, letter31, letter32, letter33, letter34, letter35, letter36, letter37])
        
        
        //        fill and return the approriate letters in tempArray2 depending on deck selected by user
        switch chosenArray {
        case 0:
            //fill for FF level B
            for index in 0...14 {tempArray2.append(tempArray[index])}
        case 1:
            //fill for FF level 1
            for index in 0...22 {tempArray2.append(tempArray[index])}
        case 2:
            //fill for 45 second deck
            for index in 0...27 {tempArray2.append(tempArray[index])}
        case 3:
            //fill for 16 second deck
            for index in 28...37 {tempArray2.append(tempArray[index])}
        case 4:
            //fill for full deck
            for index in 0...37 {tempArray2.append(tempArray[index])}
        case 5:
            //fill for treble cleff only
            for index in 1...3 {tempArray2.append(tempArray[index])}
            
            tempArray2.append(contentsOf: [tempArray[7], tempArray[8], tempArray[11]])
            
            for index in 14...19 {tempArray2.append(tempArray[index])}
            
            tempArray2.append(contentsOf: [tempArray[23], tempArray[26], tempArray[28], tempArray[30], tempArray[32], tempArray[33], tempArray[35]])
        case 6:
            //fill for bass cleff only
            
            tempArray2.append(tempArray[0])
            
            for index in 4...6 {tempArray2.append(tempArray[index])}
            
            tempArray2.append(contentsOf: [tempArray[9], tempArray[10], tempArray[12], tempArray[13]])
            
            for index in 20...22 {tempArray2.append(tempArray[index])}
            
            tempArray2.append(contentsOf: [tempArray[24], tempArray[25], tempArray[27], tempArray[29], tempArray[31], tempArray[34], tempArray[36], tempArray[37]])
        default:
            for index in 0...37 {tempArray2.append(tempArray[index])}
//            print("flashcard array not selected yet, whole array filled")
        }
        
        return tempArray2
    }
    
    
}

