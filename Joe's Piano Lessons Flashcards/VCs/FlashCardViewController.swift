//
//  FlashCardViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/25/21.
//

import UIKit

class FlashCardViewController: UIViewController  {
    
    //MARK: init
    
    @IBOutlet weak var mainStackView: UIStackView!
    @IBOutlet weak var iDontKnowButton: UIButton!
    @IBOutlet weak var answerOptionsStack: UIStackView!
    @IBOutlet weak var cartoonButton: UIButton!
    @IBOutlet weak var countTimerLabel: UILabel!
    @IBOutlet weak var grandStaffUIImage: UIImageView!
    @IBOutlet weak var cardsRemaining: UILabel!
    

    let defaults = UserDefaults.standard
    let flashCardVCInstanceOfNicknamesArray = NicknamesArray()
    var finalArrayOfIndexes = [Int]()
    var chosenCountDetailView = [Letter]()
    var wrongAnswerCounter = 0
    var finished = false
    var timer = Timer()
    var count: Int = 0
    var score: ScoreLog = ScoreLog(score: 0, date: Date())
    var chosenArrayPassed: Int = 0
    var passingArrayOfLettersSwitchedOff = [Int]()
    
    lazy var AButton: AnswerButton = {
        let button = AnswerButton(title: "A")
        button.addTarget(self, action: #selector(AButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var BButton: AnswerButton = {
        let button = AnswerButton(title: "B")
        button.addTarget(self, action: #selector(BButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var CButton: AnswerButton = {
        let button = AnswerButton(title: "C")
        button.addTarget(self, action: #selector(CButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var DButton: AnswerButton = {
        let button = AnswerButton(title: "D")
        button.addTarget(self, action: #selector(DButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var EButton: AnswerButton = {
        let button = AnswerButton(title: "E")
        button.addTarget(self, action: #selector(EButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var FButton: AnswerButton = {
        let button = AnswerButton(title: "F")
        button.addTarget(self, action: #selector(FButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var GButton: AnswerButton = {
        let button = AnswerButton(title: "G")
        button.addTarget(self, action: #selector(GButtonPressed), for: .touchUpInside)
        return button
    }()
    
    //MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setup answerOptionStack with buttons
        layoutSetup()
        // every time screen loads create object with flashcard data
        startUpFlashCards()
        newCard()
        timerFunction()
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isLandscape == true {
            mainStackView.axis = .horizontal
        } else {
            mainStackView.axis = .vertical
            mainStackView.layoutSubviews()
        }
        
    }
    
    //MARK: @objc func
    //what to do if buttons are pressed
    
    @objc func AButtonPressed() {
        //check to see if all cards have already been answered
        if finished == false {
            //get the last letter in the name of the most recently displayed flashcard and see if it matches the chosen answer
            let lastLetter = chosenCountDetailView[finalArrayOfIndexes.last!].letterNickname.last!
            if lastLetter == "A" {
                //if they were correct, get them a new card
                newCard()
            } else {
                //otherwise run the wrong answer method
                wrongAnswer(button: AButton)
            }
        }
    }
    
    @objc func BButtonPressed(_ sender: Any) {
        if finished == false {
            let lastLetter = chosenCountDetailView[finalArrayOfIndexes.last!].letterNickname.last!
            if lastLetter == "B" {
                newCard()
            } else {
                wrongAnswer(button: BButton)
            }
        }
    }
    
    @objc func CButtonPressed(_ sender: Any) {
        if finished == false {
            let lastLetter = chosenCountDetailView[finalArrayOfIndexes.last!].letterNickname.last!
            if lastLetter == "C" {
                newCard()
            } else {
                wrongAnswer(button: CButton)
            }
        }
    }
    
    @objc func DButtonPressed(_ sender: Any) {
        if finished == false {
            let lastLetter = chosenCountDetailView[finalArrayOfIndexes.last!].letterNickname.last!
            if lastLetter == "D" {
                newCard()
            } else {
                wrongAnswer(button: DButton)
            }
        }
    }
    
    @objc func EButtonPressed(_ sender: Any) {
        if finished == false {
            let lastLetter = chosenCountDetailView[finalArrayOfIndexes.last!].letterNickname.last!
            if lastLetter == "E" {
                newCard()
            } else {
                wrongAnswer(button: EButton)
            }
        }
    }
    
    @objc func FButtonPressed(_ sender: Any) {
        if finished == false {
            let lastLetter = chosenCountDetailView[finalArrayOfIndexes.last!].letterNickname.last!
            if lastLetter == "F" {
                newCard()
            } else {
                wrongAnswer(button: FButton)
            }
        }
    }
    
    @objc func GButtonPressed(_ sender: Any) {
        if finished == false {
            let lastLetter = chosenCountDetailView[finalArrayOfIndexes.last!].letterNickname.last!
            if lastLetter == "G" {
                newCard()
            } else {
                wrongAnswer(button: GButton)
            }
        }
    } //end GButton
    
    @objc func timerSelectorFunc() {
        //        add the visable timer
        count += 1
        countTimerLabel.text = "\(count)"
    }
    
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
        //run the newCard so that apon return to flashcard vc there is a new card showing and one index at 0 in the finalArrayOfIndexes
        newCard()
    }
    //MARK: methods
    
    
    func layoutSetup() {
        let arrayOfAnswerButtons = [AButton, BButton, CButton, DButton, EButton, FButton, GButton]
       var anchorCount: CGFloat = 0
        
        //add buttons to answerOptionsStack
        for index in 0...6 {
        answerOptionsStack.addSubview(arrayOfAnswerButtons[index])
            //buttons constraints
//            arrayOfAnswerButtons[index].leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: anchorCount).isActive = true
//            anchorCount += 50
        }
        //answerOptionsStack constraints
        answerOptionsStack.axis = .horizontal
        answerOptionsStack.distribution = .fillEqually
        answerOptionsStack.translatesAutoresizingMaskIntoConstraints = false
        answerOptionsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        answerOptionsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        answerOptionsStack.heightAnchor.constraint(equalToConstant: 100).isActive = true

        //buttons constraints
        AButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -165).isActive = true
        BButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -110).isActive = true
        CButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -55).isActive = true
        DButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        EButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 55).isActive = true
        FButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 110).isActive = true
        GButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 165).isActive = true
        //i don't know button layout
        iDontKnowButton.layer.cornerRadius = 10
        iDontKnowButton.layer.shadowColor = UIColor.black.cgColor
        iDontKnowButton.layer.shadowRadius = 5
        iDontKnowButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        iDontKnowButton.layer.shadowOpacity = 1
   
        //grand staff shadow
        grandStaffUIImage.clipsToBounds = false
        grandStaffUIImage.layer.shadowColor = UIColor.black.cgColor
        grandStaffUIImage.layer.shadowRadius = 5
        grandStaffUIImage.layer.shadowOffset = CGSize(width: 5, height: 5)
        grandStaffUIImage.layer.shadowOpacity = 1
        grandStaffUIImage.layer.cornerRadius = 10
    }
    
    //setup timer
    func timerFunction() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerSelectorFunc), userInfo: nil, repeats: true)
    }
    

    
    func startUpFlashCards() {
        chosenCountDetailView = flashCardVCInstanceOfNicknamesArray.createArray(chosenArray: chosenArrayPassed)
        
        //code to sift out the unwanted flashcards for the flashcardVC
        if passingArrayOfLettersSwitchedOff.count > 0 {
            for index in 0...passingArrayOfLettersSwitchedOff.count - 1{
                chosenCountDetailView.remove(at: passingArrayOfLettersSwitchedOff[index])
            } // end loop
        }
        print(chosenCountDetailView)

    } //end start up flashcards func
    
    
    
    
    //MARK:  flashcard math
    func newCard() {
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
