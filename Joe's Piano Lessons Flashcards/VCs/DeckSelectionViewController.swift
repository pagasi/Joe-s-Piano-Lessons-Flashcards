//
//  DeckSelectionViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 2/20/21.
//

import UIKit

class DeckSelectionViewController: UIViewController {

    //    MARK: init
    
    @IBOutlet weak var stackView1: UIStackView!

    var buttonSelected: Int = 0
    
    lazy var beginnerDeckButton: SelectionButton = {
        let button = SelectionButton(title: "Beginner Deck")
        button.addTarget(self, action: #selector(levelBButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var level1Button: SelectionButton = {
        let button = SelectionButton(title: "Level 1 Deck")
        var buttonSelected = 0
        button.addTarget(self, action: #selector(level1ButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var sec45Button: SelectionButton = {
        let button = SelectionButton(title: "45 Second Deck")
        button.addTarget(self, action: #selector(sec45ButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var sec16Button: SelectionButton = {
        let button = SelectionButton(title: "16 Second Deck")
        button.addTarget(self, action: #selector(sec16ButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var fullDeckButton: SelectionButton = {
        let button = SelectionButton(title: "Full Deck")
        button.addTarget(self, action: #selector(fullDeckButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var trebleOnlyButton: SelectionButton = {
        let button = SelectionButton(title: "Treble Clef")
        button.addTarget(self, action: #selector(trebleOnlyButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var bassOnlyButton: SelectionButton = {
        let button = SelectionButton(title: "Bass Clef")
        button.addTarget(self, action: #selector(bassOnlyButtonPressed), for: .touchUpInside)
        return button
    }()
    
    //    MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stack = UIStackView(arrangedSubviews: [beginnerDeckButton, level1Button, sec45Button, sec16Button, trebleOnlyButton, bassOnlyButton, fullDeckButton])
        stack.axis = .vertical
        stack.spacing = 15
        stack.distribution = .fillEqually
        
        view.addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.widthAnchor.constraint(equalToConstant: 250).isActive = true
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    //    MARK: @objc funcs
    @objc func levelBButtonPressed() {
        buttonSelected = 0
        performSegue(withIdentifier: Constants.DECK_TO_NICKNAMES_VC_SEGUE_IDENTIFIER, sender: self)
    }
    
    @objc func level1ButtonPressed() {
        buttonSelected = 1
        goToFlashVC()
    }
    
    @objc func sec45ButtonPressed() {
        buttonSelected = 2
        goToFlashVC()
    }
    
    @objc func sec16ButtonPressed() {
        buttonSelected = 3
        goToFlashVC()
    }
    
    @objc func fullDeckButtonPressed() {
        buttonSelected = 4
        goToFlashVC()
    }
    
    @objc func trebleOnlyButtonPressed() {
        buttonSelected = 5
        goToFlashVC()
    }
    
    @objc func bassOnlyButtonPressed() {
        buttonSelected = 6
        goToFlashVC()
    }
    
//    MARK: segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
        //pass to segue
        let newVC = segue.destination as! NicknamesViewController
        newVC.buttonSelectedAndPassed = buttonSelected
    }
    
    func goToFlashVC() {
        performSegue(withIdentifier: Constants.DECK_TO_NICKNAMES_VC_SEGUE_IDENTIFIER, sender: self)
    }
}
