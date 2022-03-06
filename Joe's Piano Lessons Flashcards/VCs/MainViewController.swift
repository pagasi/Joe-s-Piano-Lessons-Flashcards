//
//  MainViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/25/21.
//

import UIKit


class MainViewController: UIViewController {
    //MARK: INIT

    @IBOutlet weak var infobutton: UIButton!
    
    @IBOutlet weak var settingsButton: UIButton!
    
    let defaults = UserDefaults.standard
    
//    setup the buttons for the mainscreen
    lazy var quickStartButton: SelectionButton = {
        let button = SelectionButton(title: "Flashcards (redo last deck)")
//        button.heightAnchor.constraint(equalToConstant: 500).isActive = true
        button.addTarget(self, action: #selector(quickStartButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var flashButton: SelectionButton = {
        let button = SelectionButton(title: "Flashcard Deck selection")
        button.addTarget(self, action: #selector(flashButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var scalesButton: SelectionButton = {
        let button = SelectionButton(title: "Scales")
//        button.heightAnchor.constraint(equalToConstant: 500).isActive = true
        button.addTarget(self, action: #selector(scalesButtonPressed), for: .touchUpInside)
        return button
    }()
    
//    lazy var settingsButton: SelectionButton = {
//        let button = SelectionButton(title: "Settings")
//        button.addTarget(self, action: #selector(settingsButtonPressed), for: .touchUpInside)
//        return button
//    }()

    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
//        setup the stack to contain the buttons, add it to the View, and setup constraints
        let stack = UIStackView(arrangedSubviews: [quickStartButton, flashButton, scalesButton, /*settingsButton*/])
        stack.axis = .vertical
        stack.spacing = 15
        stack.distribution = .fillEqually
        
        view.addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.widthAnchor.constraint(equalToConstant: 250).isActive = true
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

    }
    //MARK: IBActions
//    if info button is pressed, segue to the AboutViewControler
    @IBAction func infobuttonpressed(_ sender: Any) {
        
        performSegue(withIdentifier: Constants.ABOUT_BUTTON_TO_ABOUTVC_SEGUE_IDENTIFIER, sender: self)
    }
    
    //    if settings button is pressed, segue to the SettingsViewControler
    @IBAction func settingsButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: Constants.SETTINGS_BUTTON_TO_SETTINGSVC_SEGUE_IDENTIFIER, sender: self)
    }

    
    //MARK: @objc funcs
//    if the flashbutton is pressed, segue to the nicknames view controller
    @objc func flashButtonPressed() {
        performSegue(withIdentifier: Constants.FLASHCARD_BUTTON_TO_NICKNAMESVC_SEGUE_IDENTIFIER, sender: self)
    }
//    if the quickstart button is pressed, segue to the flash card view controller to start a run
    @objc func quickStartButtonPressed() {
        performSegue(withIdentifier: Constants.QUICK_START_BUTTON_TO_FLASH_CARDSVC_SEGUE, sender: self)
        //insert code to setup userDefaults
        
        
    }
//    if the scales button is pressed, segue to the scales tab bar view controller
    @objc func scalesButtonPressed() {
        performSegue(withIdentifier: Constants.SCALES_BUTTON_TO_SCALESVC_SEGUE_IDENTIFIER, sender: self)
    }
    
    //    @objc func settingsButtonPressed() {
    //        performSegue(withIdentifier: Constants.SETTINGS_BUTTON_TO_SETTINGSVC_SEGUE_IDENTIFIER, sender: self)
    //    }

    
    //MARK: methods
//    check if the user has selected to go to the flash card view controller with the quickstart button.  If so, pull the last deck used from the userdefaults
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.QUICK_START_BUTTON_TO_FLASH_CARDSVC_SEGUE {
            let vc = segue.destination as!FlashCardViewController
            
            //check which user is active
            let userCheck = defaults.integer(forKey: Constants.USER_SELECTED)
            //impliment user 2 defaults
            if userCheck == 2 {
            //retrieve chosenArrayPassed & passingArrayOfLettersSwitchedOff from the defaults
            let buttonSelectedAndPassed = defaults.object(forKey: Constants.CHOSEN_ARRAY_PASSED2 ) as? Int ?? 4
            
            let ifEmptyArray: [Int] = []
            let ArrayOfLettersSwitchedOff = defaults.object(forKey: Constants.PASSING_ARRAY_OF_LETTERS_SWITCHED_OFF2) as? [Int] ?? ifEmptyArray
            //pass the selected array to deck selection vc
            vc.chosenArrayPassed = buttonSelectedAndPassed
            //set the arrays of unwanted cards equal in both view controllers
            vc.passingArrayOfLettersSwitchedOff = ArrayOfLettersSwitchedOff
            } else {
                //implement user 1 defaults
                
                //retrieve chosenArrayPassed & passingArrayOfLettersSwitchedOff from the defaults
                let buttonSelectedAndPassed = defaults.object(forKey: Constants.CHOSEN_ARRAY_PASSED ) as? Int ?? 4
                
                let ifEmptyArray: [Int] = []
                let ArrayOfLettersSwitchedOff = defaults.object(forKey: Constants.PASSING_ARRAY_OF_LETTERS_SWITCHED_OFF) as? [Int] ?? ifEmptyArray
                //pass the selected array to deck selection vc
                vc.chosenArrayPassed = buttonSelectedAndPassed
                //set the arrays of unwanted cards equal in both view controllers
                vc.passingArrayOfLettersSwitchedOff = ArrayOfLettersSwitchedOff
            }
        }
    }
}
