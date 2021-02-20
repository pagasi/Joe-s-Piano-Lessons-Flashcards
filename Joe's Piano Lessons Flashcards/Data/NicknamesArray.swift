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
        //beginner notes
        let letter0: Letter = Letter(letterNickname: Constants.RH_CAT_C, letterSwitch: tempSwitch)
        let letter1: Letter = Letter(letterNickname: Constants.DANGLING_D, letterSwitch: tempSwitch)
        let letter2: Letter = Letter(letterNickname: Constants.ELEPHANT_E, letterSwitch: tempSwitch)
        let letter3: Letter = Letter(letterNickname: Constants.FRISBEE_F, letterSwitch: tempSwitch)
        let letter4: Letter = Letter(letterNickname: Constants.SPLAT_APPLE_A, letterSwitch: tempSwitch)
        let letter5: Letter = Letter(letterNickname: Constants.APPLE_A_ON_THE_GROUND_A, letterSwitch: tempSwitch)
        let letter6: Letter = Letter(letterNickname: Constants.APPLE_A, letterSwitch: tempSwitch)
        let letter7: Letter = Letter(letterNickname: Constants.APPLE_IN_THE_CHIMNEY_A, letterSwitch: tempSwitch)
        let letter8: Letter = Letter(letterNickname: Constants.APPLE_ON_THE_WINDOW_SILL_A, letterSwitch: tempSwitch)
        let letter9: Letter = Letter(letterNickname: Constants.BOMB_B, letterSwitch: tempSwitch)
        let letter10: Letter = Letter(letterNickname: Constants.BOMBER_B, letterSwitch: tempSwitch)
        let letter11: Letter = Letter(letterNickname: Constants.BOUNCING_BALL_B, letterSwitch: tempSwitch)
        let letter12: Letter = Letter(letterNickname: Constants.DUNKIN_D, letterSwitch: tempSwitch)
        let letter13: Letter = Letter(letterNickname: Constants.EYEBALL_E, letterSwitch: tempSwitch)
        let letter14: Letter = Letter(letterNickname: Constants.GIANT_OR_GIRAFFE_G, letterSwitch: tempSwitch)
        let letter15: Letter = Letter(letterNickname: Constants.GOAT_ON_THE_ROOF_G, letterSwitch: tempSwitch)
        let letter16: Letter = Letter(letterNickname: Constants.GROUND_G, letterSwitch: tempSwitch)
        let letter17: Letter = Letter(letterNickname: Constants.ROOF_F, letterSwitch: tempSwitch)
        let letter18: Letter = Letter(letterNickname: Constants.B_BREAKS_B, letterSwitch: tempSwitch)
        let letter19: Letter = Letter(letterNickname: Constants.BASS_F, letterSwitch: tempSwitch)
        let letter20: Letter = Letter(letterNickname: Constants.BEACH_B, letterSwitch: tempSwitch)
        let letter21: Letter = Letter(letterNickname: Constants.BURIED_GUY_B, letterSwitch: tempSwitch)
        let letter22: Letter = Letter(letterNickname: Constants.CHEATER_F, letterSwitch: tempSwitch)
        let letter23: Letter = Letter(letterNickname: Constants.D_DIVIDES_D, letterSwitch: tempSwitch)
        let letter24: Letter = Letter(letterNickname: Constants.DEAD_GUY_D, letterSwitch: tempSwitch)
        let letter25: Letter = Letter(letterNickname: Constants.ELEVATOR_E, letterSwitch: tempSwitch)
        let letter26: Letter = Letter(letterNickname: Constants.FISH_F, letterSwitch: tempSwitch)
        let letter27: Letter = Letter(letterNickname: Constants.GOODIE_TWO_SHOES_G, letterSwitch: tempSwitch)
        let letter28: Letter = Letter(letterNickname: Constants.GREAT_DIVER_D, letterSwitch: tempSwitch)
        let letter29: Letter = Letter(letterNickname: Constants.GREAT_ELEPHANT_E, letterSwitch: tempSwitch)
        let letter30: Letter = Letter(letterNickname: Constants.GREAT_SECOND_KISSING_COUSIN_C, letterSwitch: tempSwitch)
        let letter31: Letter = Letter(letterNickname: Constants.HIGH_DIVER_D, letterSwitch: tempSwitch)
        let letter32: Letter = Letter(letterNickname: Constants.HIGH_KISSING_COUSIN_C, letterSwitch: tempSwitch)
        let letter33: Letter = Letter(letterNickname: Constants.LH_ELEPHANT_E, letterSwitch: tempSwitch)
        let letter34: Letter = Letter(letterNickname: Constants.LOW_KISSING_COUSIN_C, letterSwitch: tempSwitch)
        let letter35: Letter = Letter(letterNickname: Constants.TREBLE_G, letterSwitch: tempSwitch)
        let letter36: Letter = Letter(letterNickname: Constants.C3_SECOND_KISSING_COUSIN_C, letterSwitch: tempSwitch)
        let letter37: Letter = Letter(letterNickname: Constants.LH_CAT_C, letterSwitch: tempSwitch)


//add 2nd cousins both versions
        
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
        tempArray.append(letter18)
        tempArray.append(letter19)
        tempArray.append(letter20)
        tempArray.append(letter21)
        tempArray.append(letter22)
        tempArray.append(letter23)
        tempArray.append(letter24)
        tempArray.append(letter25)
        tempArray.append(letter26)
        tempArray.append(letter27)
        tempArray.append(letter28)
        tempArray.append(letter29)
        tempArray.append(letter30)
        tempArray.append(letter31)
        tempArray.append(letter32)
        tempArray.append(letter33)
        tempArray.append(letter34)
        tempArray.append(letter35)
        tempArray.append(letter36)
        tempArray.append(letter37)
        
        
        return tempArray
    }
}

