//
//  MainViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/25/21.
//

import UIKit


class MainViewController: UIViewController {
    //MARK: INIT
    @IBOutlet weak var stackView1: UIStackView!
    @IBOutlet weak var infobutton: UIButton!
    
    let defaults = UserDefaults.standard
    
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
//    
//    lazy var aboutButton: SelectionButton = {
//        let button = SelectionButton(title: "About Joe's Piano Lessons")
//        button.addTarget(self, action: #selector(aboutButtonPressed), for: .touchUpInside)
//        return button
//    }()
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stack = UIStackView(arrangedSubviews: [quickStartButton, flashButton, scalesButton, /*aboutButton, settingsButton*/])
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
    @IBAction func infobuttonpressed(_ sender: Any) {
        
        performSegue(withIdentifier: Constants.ABOUT_BUTTON_TO_ABOUTVC_SEGUE_IDENTIFIER, sender: self)
    }
    
    //MARK: @objc funcs
    @objc func flashButtonPressed() {
        performSegue(withIdentifier: Constants.FLASHCARD_BUTTON_TO_NICKNAMESVC_SEGUE_IDENTIFIER, sender: self)
    }
    
    @objc func quickStartButtonPressed() {
        performSegue(withIdentifier: Constants.QUICK_START_BUTTON_TO_FLASH_CARDSVC_SEGUE, sender: self)
        //insert code to setup userDefaults
        
        
    }
    
    @objc func scalesButtonPressed() {
        performSegue(withIdentifier: Constants.SCALES_BUTTON_TO_SCALESVC_SEGUE_IDENTIFIER, sender: self)
    }
    
    //    @objc func settingsButtonPressed() {
    //        performSegue(withIdentifier: Constants.SETTINGS_BUTTON_TO_SETTINGSVC_SEGUE_IDENTIFIER, sender: self)
    //    }
//
//    @objc func aboutButtonPressed() {
//        performSegue(withIdentifier: Constants.ABOUT_BUTTON_TO_ABOUTVC_SEGUE_IDENTIFIER, sender: self)
//    }
    
    //MARK: methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.QUICK_START_BUTTON_TO_FLASH_CARDSVC_SEGUE {
            let vc = segue.destination as!FlashCardViewController
            
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



//MARK: Notes





