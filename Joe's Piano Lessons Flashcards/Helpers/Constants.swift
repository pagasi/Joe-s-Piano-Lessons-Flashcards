//
//  Constants.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/26/21.
//

import Foundation
import UIKit

struct Constants {
    
    //MARK: VC identifiers
    static var MAIN_VC_IDENTIFIER = "mainVC"
    static var NICKNAMES_VC_IDENTIFIER = "nicknamesVC"
    static var FLASHCARDS_VC_IDENTIFIER = "flashcardsVC"
    static var CARTOON_VC_IDENTIFIER = "cartoonVC"
    static var SETTINGS_VC_IDENTIFIER = "settingsVC"
    static var ABOUT_VC_IDENTIFIER = "aboutVC"
    static var CUSTOMIZE_VC_IDENTIFIER = "customizeVC"
    
    //MARK: cell identifiers
    static var NICKNAMES_CELL_REUSE_IDENTIFIER = "nicknamesCellIdentifier"
    static var SCALES_CELL_IDENTIFIER = "scalesCellIdentifier"
    static var SCALES_CELL_IDENTIFIER2 = "scalesCellIdentifier2"
    static var SCALES_CELL_IDENTIFIER3 = "scalesCellIdentifier3"
    static var SCALES_CELL_IDENTIFIER4 = "scalesCellIdentifier4"
    
    
    //MARK: segue identifiers
    static var DECK_TO_NICKNAMES_VC_SEGUE_IDENTIFIER = "deckToNicknamesSegue"
    static var LETTER_SEGUE_FLASHVC_TO_CARTOONVC_IDENTIFIER = "letterSegueFlashcardVCToCartoonVC"
    static var FLASHCARD_BUTTON_TO_NICKNAMESVC_SEGUE_IDENTIFIER = "flashButtonToNicknamesVCSegue"
    static var SETTINGS_BUTTON_TO_SETTINGSVC_SEGUE_IDENTIFIER = "settingsButtonToSettingsVC"
    static var ABOUT_BUTTON_TO_ABOUTVC_SEGUE_IDENTIFIER = "aboutButtontoAboutVC"
    static var SCALES_BUTTON_TO_SCALESVC_SEGUE_IDENTIFIER = "scalesButtonToScalesVC"
    static var QUICK_START_BUTTON_TO_FLASH_CARDSVC_SEGUE = "quickStartButtonToFlashCardsVCSegue"
    static var GO_BUTTON_TO_FLASHCARDS_SEGUE = "goButtonToFlashcardsSegue"
    
    //MARK: flashcard strings
    static var APPLE_A = "Apple A"//
    static var RH_CAT_C = "RH Cat C"
    static var DANGLING_D = "Dangling D"
    static var ELEPHANT_E = "Elephant E"
    static var FRISBEE_F = "Frisbee F"
    static var SPLAT_APPLE_A = "Splat Apple A"
    static var APPLE_A_ON_THE_GROUND_A = "Apple A On the Ground A"//
    static var APPLE_IN_THE_CHIMNEY_A = "Apple In The Chimney A"//
    static var APPLE_ON_THE_WINDOW_SILL_A = "Apple On The Window Sill A"//
    static var BOMB_B = "Bomb B"
    static var BOMBER_B = "Bomber B"
    static var BOUNCING_BALL_B = "Bouncing Ball B"
    static var DUNKIN_D = "Dunkin D"
    static var EYEBALL_E = "Eyeball E"
    static var GIANT_OR_GIRAFFE_G = "Giant or Giraffe G"
    static var GOAT_ON_THE_ROOF_G = "Goat On The Roof G"
    static var GROUND_G = "Ground G"
    static var ROOF_F = "Roof F"
    static var B_BREAKS_B = "B Breaks B"
    static var BASS_F = "Bass F"
    static var BEACH_B = "Beach B"
    static var BURIED_GUY_B = "Buried Guy B"
    static var CHEATER_F = "Cheater F"
    static var D_DIVIDES_D = "D Divides D"
    static var DEAD_GUY_D = "Dead Guy D"
    static var ELEVATOR_E = "Elevator E"
    static var FISH_F = "Fish F"
    static var GOODIE_TWO_SHOES_G = "Goodie Two Shoes G"
    static var GREAT_DIVER_D = "Great Diver D"
    static var GREAT_ELEPHANT_E = "Great Elephant E"
    static var GREAT_SECOND_KISSING_COUSIN_C = "Great Second Cousin C"
    static var HIGH_DIVER_D = "High Diver D"
    static var HIGH_KISSING_COUSIN_C = "High Cousin C"
    static var LH_ELEPHANT_E = "LH Elephant E"
    static var LOW_KISSING_COUSIN_C = "Low Cousin C"
    static var TREBLE_G = "Treble G"
    static var C3_SECOND_KISSING_COUSIN_C = "C3 Second Cousin C"
    static var LH_CAT_C = "LH Cat C"
    
    //MARK: Unicodes
    static var FLAT_UNICODE = "\u{266D}" //flat
    static var NATURAL_UNICODE = "\u{266E}" //natural
    static var SHARP_UNICODE = "\u{266F}" //sharp
    static var DOUBLE_SHARP_UNICODE = "\u{1D61}" //double sharp
    static var WHOLE_NOTE_UNICODE = "\u{1D15D}" //whole note but doesn't work?
    
    //MARK: defaults
    static var CHOSEN_ARRAY_PASSED = "chosenArrayPassed"
    static var PASSING_ARRAY_OF_LETTERS_SWITCHED_OFF = "passingArrayOfLettersSwitchedOff"
    
    //MARK: fonts
    static var HELVETICA_FONT = "Helvetica"
    
    
    //other identifiers
    static var DONE_CARD_NAME = "Done"
    static var PLAY_SF = UIImage(systemName: "play.fill")
}
