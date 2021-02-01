//
//  FlashCardViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/25/21.
//

import UIKit

class FlashCardViewController: UIViewController {
    
    //MARK: init
    
    @IBOutlet weak var countTimerLabel: UILabel!
    @IBOutlet weak var grandStaffUIImage: UIImageView!
    
    var selectedButton: String = ""
    let flashCardVCInstanceOfNicknamesArray = NicknamesArray()
    var finalArrayOfIndexes = [Int]()
    var chosenCountDetailView = [Letter]()
    
    
    //MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // create object with flashcard data
        startUpFlashCards()
    }
    //MARK: Button outlets
    //what to do if buttons are pressed
    @IBAction func AButtonPressed(_ sender: Any) {
        selectedButton = "A"
    }
    @IBAction func BButtonPressed(_ sender: Any) {
        selectedButton = "B"
    }
    @IBAction func CButtonPressed(_ sender: Any) {
        selectedButton = "C"
    }
    @IBAction func DButtonPressed(_ sender: Any) {
        selectedButton = "D"
    }
    @IBAction func EButtonPressed(_ sender: Any) {
        selectedButton = "E"
    }
    @IBAction func FButtonPressed(_ sender: Any) {
        selectedButton = "F"
    }
    @IBAction func GButtonPressed(_ sender: Any) {
        selectedButton = "G"
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
            var randomNumber = Int.random(in: 0...chosenCountDetailView.count)
                //
                while finalArrayOfIndexes.contains(randomNumber) == true {
                    print("duplicate")
                    randomNumber = Int.random(in: 0...chosenCountDetailView.count)
                    }
            //MARK: to do
            //TODO: apply nolan app code to this app
                /*
                    finalArrayOfIndexes.append(randomNumber)
                    flashCard.text = flashCards[randomNumber]
               wordsRemaining.text = "Words remaining: \(chosenCountDetailView - finalArrayOfIndexes.count + 1)"
 */
                }
    }
        
    
}
