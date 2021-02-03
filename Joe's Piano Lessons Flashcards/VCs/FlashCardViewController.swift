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
    var finished = false
    
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
        if finished == false {
        selectedButtonArrayOfAnswers = [4]
        
        if selectedButtonArrayOfAnswers!.contains(finalArrayOfIndexes.last!) {
            model()
        } else {
            wrongAnswer(button: AButton)
        }
        }
    }
    @IBAction func BButtonPressed(_ sender: Any) {
        if finished == false {
        selectedButtonArrayOfAnswers = [9]
        if selectedButtonArrayOfAnswers!.contains(finalArrayOfIndexes.last!) {
            model()
        } else {
            wrongAnswer(button: BButton)
        }
        }
    }
    @IBAction func CButtonPressed(_ sender: Any) {
        if finished == false {
        selectedButtonArrayOfAnswers = [0]
        if selectedButtonArrayOfAnswers!.contains(finalArrayOfIndexes.last!) {
            model()
        } else {
            wrongAnswer(button: CButton)
        }
        }
    }
    @IBAction func DButtonPressed(_ sender: Any) {
        if finished == false {
        selectedButtonArrayOfAnswers = [1]
        if selectedButtonArrayOfAnswers!.contains(finalArrayOfIndexes.last!) {
            model()
        } else {
            wrongAnswer(button: DButton)
        }
        }
        }
    
    @IBAction func EButtonPressed(_ sender: Any) {
        if finished == false {
        selectedButtonArrayOfAnswers = [2]
        if selectedButtonArrayOfAnswers!.contains(finalArrayOfIndexes.last!) {
            model()
        } else {
            wrongAnswer(button: EButton)
        }
        }
    }
    @IBAction func FButtonPressed(_ sender: Any) {
        if finished == false {
        selectedButtonArrayOfAnswers = [3]
        if selectedButtonArrayOfAnswers!.contains(finalArrayOfIndexes.last!) {
            model()
        } else {
            wrongAnswer(button: FButton)
        }
        }
    }
    @IBAction func GButtonPressed(_ sender: Any) {
        if finished == false {
        selectedButtonArrayOfAnswers = [9]
        if selectedButtonArrayOfAnswers!.contains(finalArrayOfIndexes.last!) {
            model()
        } else {
            wrongAnswer(button: GButton)
        }
        }
    } //end GButton
    @IBAction func cartoonButtonPressed(_ sender: Any) {
        if finished == false {
        performSegue(withIdentifier: Constants.LETTER_SEGUE_FLASHVC_TO_CARTOONVC_IDENTIFIER, sender: Any?.self)
        } else {return}
    }
    
    
    //MARK: methods
    
    func startUpFlashCards() {
        chosenCountDetailView = flashCardVCInstanceOfNicknamesArray.createArray()
    }

    //MARK:  Model of flashcard math
    func model() {
        //check if all the cards have been displayed
        if finalArrayOfIndexes.count < chosenCountDetailView.count {
            
            //get new random index
            var randomNumber = Int.random(in: 0...chosenCountDetailView.count - 1)
            //check of that card has already been done
            while finalArrayOfIndexes.contains(randomNumber) == true {
                print("duplicate")
                randomNumber = Int.random(in: 0...chosenCountDetailView.count - 1)
            }
            //add this card to the list of used cards
            finalArrayOfIndexes.append(randomNumber)
            //set the flashcard image
            grandStaffUIImage.image = UIImage(named: chosenCountDetailView[randomNumber].letterNickname)
            
            
            cardsRemaining.text = "\(chosenCountDetailView.count - finalArrayOfIndexes.count) / \(chosenCountDetailView.count)"
            
            

            
        } else {
            //clean up properties
            selectedButtonArrayOfAnswers = nil
            finalArrayOfIndexes = []
            grandStaffUIImage.image = UIImage(named: "Done")
            finished = true
        }
        
    }
    
    func wrongAnswer(button: UIButton) {
        
        wrongAnswerCounter += 1
        button.backgroundColor = .red
        if wrongAnswerCounter == 2 {
            
            //MARK: TODO -  add the proper image
            
                
            
            performSegue(withIdentifier: Constants.LETTER_SEGUE_FLASHVC_TO_CARTOONVC_IDENTIFIER, sender: Any?.self)
        }
        
    }
    //MARK: prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //setup for the next flashcard apon return to flashcardVC
        //remove any red backgrounds on buttons
        AButton.backgroundColor = .lightGray
        BButton.backgroundColor = .lightGray
        CButton.backgroundColor = .lightGray
        DButton.backgroundColor = .lightGray
        EButton.backgroundColor = .lightGray
        FButton.backgroundColor = .lightGray
        GButton.backgroundColor = .lightGray
        //reset the wrong answer counter to 0
        wrongAnswerCounter = 0
       //change the cartoonVC image to the missed card's image
        let destinationVC = segue.destination as! CartoonViewController
        destinationVC.passingVar = finalArrayOfIndexes.last!
        //add the card that was not correctly answered back into the deck so it comes back up later
        finalArrayOfIndexes.removeLast()
        //run the model so that apon return to flashcard vc there is a new card showing and one index at 0 in the finalArrayOfIndexes
        model()

    }
}
//MARK: to do
//fix constraints on storyboard
//add data and arrays for the letters when buttons pressed
//set the flashcards to display proper quarternote/whole note etc images

//program what to do when the finalArray is full
//transfer model to another file???


