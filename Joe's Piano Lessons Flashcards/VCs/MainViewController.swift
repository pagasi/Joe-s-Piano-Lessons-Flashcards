//
//  MainViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/25/21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var stackView1: UIStackView!

    lazy var flashButton: SelectionButton = {
        let button = SelectionButton(title: "Flash Cards")
        button.addTarget(self, action: #selector(flashButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var settingsButton: SelectionButton = {
        let button = SelectionButton(title: "Settings")
        button.addTarget(self, action: #selector(settingsButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var scalesButton: SelectionButton = {
        let button = SelectionButton(title: "Scales")
        button.addTarget(self, action: #selector(scalesButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var aboutButton: SelectionButton = {
        let button = SelectionButton(title: "About Joe's Piano Lessons")
        button.addTarget(self, action: #selector(aboutButtonPressed), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stack = UIStackView(arrangedSubviews: [flashButton, settingsButton, scalesButton, aboutButton])
        stack.axis = .vertical
        stack.spacing = 15
        stack.distribution = .fillEqually
        
        view.addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.widthAnchor.constraint(equalToConstant: 250).isActive = true
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
       
        
        // Do any additional setup after loading the view.
    }
    
    @objc func flashButtonPressed() {
        performSegue(withIdentifier: Constants.FLASHCARD_BUTTON_TO_NICKNAMESVC_SEGUE_IDENTIFIER, sender: self)
    }
    
    @objc func settingsButtonPressed() {
        performSegue(withIdentifier: Constants.SETTINGS_BUTTON_TO_SETTINGSVC_SEGUE_IDENTIFIER, sender: self)
    }
    
    @objc func scalesButtonPressed() {
        performSegue(withIdentifier: Constants.SCALES_BUTTON_TO_SCALESVC_SEGUE_IDENTIFIER, sender: self)
    }
    
    @objc func aboutButtonPressed() {
        performSegue(withIdentifier: Constants.ABOUT_BUTTON_TO_ABOUTVC_SEGUE_IDENTIFIER, sender: self)
    }
}
