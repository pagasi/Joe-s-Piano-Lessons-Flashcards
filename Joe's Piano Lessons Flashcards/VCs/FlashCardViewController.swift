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
    
    let flashCardVCInstanceOfNicknamesArray = NicknamesArray()
    var finalArrayOfIndexes = [Int]()
    var chosenCountDetailView = [Letter]()
    var wrongAnswerCounter = 0
    var finished = false
    var passingArrayOfLettersSwitchedOff = [Int]()
    var timer = Timer()
    var count: Int = 0
    var score: ScoreLog = ScoreLog(score: 0, date: Date())
    
    
    
    //MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // every time screen loads create object with flashcard data
        startUpFlashCards()
        model()
        timerFunction()
    }
    //MARK: @IBActions
    //what to do if buttons are pressed
    @IBAction func AButtonPressed(_ sender: Any) {
        //check to see if all cards have already been answered
        if finished == false {
            //get the last letter in the name of the most recently displayed flashcard and see if it matches the chosen answer
            let lastLetter = chosenCountDetailView[finalArrayOfIndexes.last!].letterNickname.last!
            if lastLetter == "A" {
                //if they were correct, get them a new card
                model()
            } else {
                //otherwise run the wrong answer method
                wrongAnswer(button: AButton)
            }
        }
    }
    @IBAction func BButtonPressed(_ sender: Any) {
        if finished == false {
            let lastLetter = chosenCountDetailView[finalArrayOfIndexes.last!].letterNickname.last!
            if lastLetter == "B" {
                model()
            } else {
                wrongAnswer(button: BButton)
            }
        }
    }
    @IBAction func CButtonPressed(_ sender: Any) {
        if finished == false {
            let lastLetter = chosenCountDetailView[finalArrayOfIndexes.last!].letterNickname.last!
            if lastLetter == "C" {
                model()
            } else {
                wrongAnswer(button: CButton)
            }
        }
    }
    @IBAction func DButtonPressed(_ sender: Any) {
        if finished == false {
            let lastLetter = chosenCountDetailView[finalArrayOfIndexes.last!].letterNickname.last!
            if lastLetter == "D" {
                model()
            } else {
                wrongAnswer(button: DButton)
            }
        }
    }
    
    @IBAction func EButtonPressed(_ sender: Any) {
        if finished == false {
            let lastLetter = chosenCountDetailView[finalArrayOfIndexes.last!].letterNickname.last!
            if lastLetter == "E" {
                model()
            } else {
                wrongAnswer(button: EButton)
            }
        }
    }
    @IBAction func FButtonPressed(_ sender: Any) {
        if finished == false {
            let lastLetter = chosenCountDetailView[finalArrayOfIndexes.last!].letterNickname.last!
            if lastLetter == "F" {
                model()
            } else {
                wrongAnswer(button: FButton)
            }
        }
    }
    @IBAction func GButtonPressed(_ sender: Any) {
        if finished == false {
            let lastLetter = chosenCountDetailView[finalArrayOfIndexes.last!].letterNickname.last!
            if lastLetter == "G" {
                model()
            } else {
                wrongAnswer(button: GButton)
            }
        }
    } //end GButton
    
    
    @IBAction func cartoonButtonPressed(_ sender: Any) {
        //check to see if the user has finished all cards.  If finished, don't do anything
        if finished == false {
            //if not finished, go ahead and segue to the cartoon View Controller using the prepare for segue below
            performSegue(withIdentifier: Constants.LETTER_SEGUE_FLASHVC_TO_CARTOONVC_IDENTIFIER, sender: Any?.self)
        } else {return}
    }
    
    //MARK: prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //clean the screen up
        screenClean()
        //change the cartoonVC image to the missed card's image
        let destinationVC = segue.destination as! CartoonViewController
        destinationVC.passingVar = chosenCountDetailView[finalArrayOfIndexes.last!].letterNickname
        //add the card that was not correctly answered back into the deck so it comes back up later
        finalArrayOfIndexes.removeLast()
        //run the model so that apon return to flashcard vc there is a new card showing and one index at 0 in the finalArrayOfIndexes
        model()
    }
    //MARK: methods
    
    //setup timer
    func timerFunction() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerSelectorFunc), userInfo: nil, repeats: true)
    }
    
    @objc func timerSelectorFunc() {
        //        add the visable timer
        count += 1
        countTimerLabel.text = "\(count)"
    }
    
    func startUpFlashCards() {
        chosenCountDetailView = flashCardVCInstanceOfNicknamesArray.createArray()
        
        //code to sift out the unwanted flashcards for the flashcardVC
        if passingArrayOfLettersSwitchedOff.count > 0 {
            for index in 0...passingArrayOfLettersSwitchedOff.count - 1{
                chosenCountDetailView.remove(at: passingArrayOfLettersSwitchedOff[index])
            } // end loop
        }
        print(chosenCountDetailView)
    } //end start up flashcards func
    
    
    
    
    //MARK:  Model of flashcard math
    func model() {
        //clean up previous card
        screenClean()
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
            //MARK: set the flashcard image
            grandStaffUIImage.image = UIImage(named: "Card \(chosenCountDetailView[randomNumber].letterNickname)")
            
            //update or set the cardsRemaining text
            cardsRemaining.text = "\(chosenCountDetailView.count - finalArrayOfIndexes.count) / \(chosenCountDetailView.count)"
            
            
            
            
        } else {
            //            MARK: game over cleanup
            // if all the cards have been displayed, clean up properties, invalidate timer, capture score, and lock all the buttons by marking finished as true
            finalArrayOfIndexes = []
            grandStaffUIImage.image = UIImage(named: Constants.DONE_CARD_NAME)
            timer.invalidate()
            //            capture the score for high score page
            score.score = count
            finished = true
        }
        
    }
    
    func wrongAnswer(button: UIButton) {
        //track wrong answers with red backgrounds and a wrong answer counter.  After two wrong answers diplay the correct cartoon and shuffle that card back into the deck
        wrongAnswerCounter += 1
        button.backgroundColor = .red
        if wrongAnswerCounter == 2 {
            
            performSegue(withIdentifier: Constants.LETTER_SEGUE_FLASHVC_TO_CARTOONVC_IDENTIFIER, sender: Any?.self)
        }
        
    }
    
    func screenClean() {
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
    }
    
}


