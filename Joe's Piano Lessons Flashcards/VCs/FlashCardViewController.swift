//
//  FlashCardViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/25/21.
//

import UIKit

class FlashCardViewController: UIViewController {
    
    //MARK: init
    
    @IBOutlet weak var AButton: UIButton!
    @IBOutlet weak var BButton: UIButton!
    @IBOutlet weak var CButton: UIButton!
    @IBOutlet weak var DButton: UIButton!
    @IBOutlet weak var EButton: UIButton!
    @IBOutlet weak var FButton: UIButton!
    @IBOutlet weak var GButton: UIButton!
    @IBOutlet weak var cartoonButton: UIButton!
    @IBOutlet weak var countTimerLabel: UILabel!
    @IBOutlet weak var grandStaffUIImage: UIImageView!
    @IBOutlet weak var cardsRemaining: UILabel!
    
    var selectedButtonArrayOfAnswers: [Int]? = nil
    let flashCardVCInstanceOfNicknamesArray = NicknamesArray()
    var finalArrayOfIndexes = [Int]()
    var chosenCountDetailView = [Letter]()
    var wrongAnswerCounter = 0
    
    //MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // create object with flashcard data
        startUpFlashCards()
        model()
    }
    //MARK: Button outlets
    //what to do if buttons are pressed
    @IBAction func AButtonPressed(_ sender: Any) {
        selectedButtonArrayOfAnswers = [3]
        if selectedButtonArrayOfAnswers!.contains(finalArrayOfIndexes.last!) {
            model()
        } else {
            wrongAnswer(button: AButton)
        }
    }
    @IBAction func BButtonPressed(_ sender: Any) {
        selectedButtonArrayOfAnswers = [3]
        if selectedButtonArrayOfAnswers!.contains(finalArrayOfIndexes.last!) {
            model()
        } else {
            wrongAnswer(button: BButton)
        }
    }
    @IBAction func CButtonPressed(_ sender: Any) {
        selectedButtonArrayOfAnswers = [0]
        if selectedButtonArrayOfAnswers!.contains(finalArrayOfIndexes.last!) {
            model()
        } else {
            wrongAnswer(button: CButton)
        }
        
    }
    @IBAction func DButtonPressed(_ sender: Any) {
        selectedButtonArrayOfAnswers = [1]
        if selectedButtonArrayOfAnswers!.contains(finalArrayOfIndexes.last!) {
            model()
        } else {
            wrongAnswer(button: DButton)
        }
        }
    
    @IBAction func EButtonPressed(_ sender: Any) {
        selectedButtonArrayOfAnswers = [3]
        if selectedButtonArrayOfAnswers!.contains(finalArrayOfIndexes.last!) {
            model()
        } else {
            wrongAnswer(button: EButton)
        }
    }
    @IBAction func FButtonPressed(_ sender: Any) {
        selectedButtonArrayOfAnswers = [3]
        if selectedButtonArrayOfAnswers!.contains(finalArrayOfIndexes.last!) {
            model()
        } else {
            wrongAnswer(button: FButton)
        }
    }
    @IBAction func GButtonPressed(_ sender: Any) {
        selectedButtonArrayOfAnswers = [3]
        if selectedButtonArrayOfAnswers!.contains(finalArrayOfIndexes.last!) {
            model()
        } else {
            wrongAnswer(button: GButton)
        }
    }
    
    //MARK: methods
    
    func startUpFlashCards() {
        chosenCountDetailView = flashCardVCInstanceOfNicknamesArray.createArray()
    }

    //MARK:  Model of flashcard math
    func model() {
        //check if all the cards have been displayed
        if finalArrayOfIndexes.count < chosenCountDetailView.count + 1 {
            
            //get new random index
            var randomNumber = Int.random(in: 0...chosenCountDetailView.count - 1)
            //check of that card has already been done
            while finalArrayOfIndexes.contains(randomNumber) == true {
                print("duplicate")
                randomNumber = Int.random(in: 0...chosenCountDetailView.count - 1)
            }
            //add this card to the list of used cards
            finalArrayOfIndexes.append(randomNumber)
            grandStaffUIImage.image = UIImage(named: chosenCountDetailView[randomNumber].letterNickname)
            
            
            cardsRemaining.text = "\(chosenCountDetailView.count - finalArrayOfIndexes.count) / \(chosenCountDetailView.count)"
            
            

            
        }
    }
    
    func wrongAnswer(button: UIButton) {
        
        wrongAnswerCounter += 1
        button.backgroundColor = .red
        if wrongAnswerCounter == 2 {
            
            //MARK: TODO - PREPARE FOR SEGUE, add the proper image
            performSegue(withIdentifier: Constants.LETTER_SEGUE_FLASHVC_TO_CARTOONVC_IDENTIFIER, sender: Any?.self)
        }
        
    }
}
//MARK: to do
//fix constraints on storyboard
//add data and arrays for the letters when buttons pressed
//set the flashcards to display proper quarternote/whole note etc images
//configure the cartoon segue to reshuffle that last card back in the deck
//program what to do when the finalArray is full
//transfer model to another file???
