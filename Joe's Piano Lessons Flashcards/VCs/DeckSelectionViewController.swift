//
//  DeckSelectionViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 2/20/21.
//

import UIKit

class DeckSelectionViewController: UIViewController {

    //    MARK: init

    var mainStack = UIStackView()
    var stack = UIStackView()
    var stack2 = UIStackView()
    var buttonSelected: Int = 0
    var stackXConstraint = NSLayoutConstraint()
    var stackYConstraint = NSLayoutConstraint()
    var stack2XConstraint = NSLayoutConstraint()
    var stack2YConstraint = NSLayoutConstraint()
    
//  setup buttons for deck selection view controller
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
        
        stackSetup()
        stackConstraints()
    }
    
//    run constriants for the stacks
    func stackConstraints() {
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack2.translatesAutoresizingMaskIntoConstraints = false

        stack.widthAnchor.constraint(equalToConstant: 250).isActive = true
        stack2.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
//  handle device's orientation
        stackRotation()
    }
    
    //    MARK: willTransition
        override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
//            handle device's orientation before transitioning to new view controller
            stackRotation()
        }
    
    
    //MARK: methods
//    setup the stacks to handle orientation change by adding the buttons to two seperate stacks which can be put into the mainstack and switched from vertical to horizontal views
    func stackSetup() {
        stack = UIStackView(arrangedSubviews: [beginnerDeckButton, level1Button, sec45Button])
        stack2 = UIStackView(arrangedSubviews: [sec16Button, trebleOnlyButton, bassOnlyButton, fullDeckButton])
        
        //stack features
        stack.axis = .vertical
        stack.spacing = 15
        stack.distribution = .fillEqually

        //stack2 features
        stack2.axis = .vertical
        stack2.spacing = 15
        stack2.distribution = .fillEqually

        view.addSubview(stack)
        view.addSubview(stack2)
    }
    
//    function to handle device orientation change
    func stackRotation() {
        // check if the device is in or goes into landscape
        if UIDevice.current.orientation.isLandscape == true {
            
// clean out previous constraints to setup new ones
            [stackXConstraint, stackYConstraint, stack2XConstraint, stack2YConstraint].forEach {NSLayoutConstraint.deactivate([$0])}
            
//            setup constraints for landscape view
            stackXConstraint = stack.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: -140)
            stackYConstraint = stack.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
            stack2XConstraint = stack2.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 140)
            stack2YConstraint = stack2.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
            
            [stackXConstraint, stackYConstraint, stack2XConstraint, stack2YConstraint].forEach {NSLayoutConstraint.activate([$0])}
            //[fortyFiveSecondButton, sixteenSecondButton, beginnerButton, fullDeckButton].forEach {switchHorizontalStack.addArrangedSubview($0)}
        } else {
//          if the check says that the device is portrait or goes into portrait
//          clean out previous constraints to make room for portrait constraints
            [stackXConstraint, stackYConstraint, stack2XConstraint, stack2YConstraint].forEach {NSLayoutConstraint.deactivate([$0])}
            
//            setup new portrait mode constraints
            stackYConstraint = stack.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -120)
            stackXConstraint = stack.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
            stack2YConstraint = stack2.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 90)
            stack2XConstraint = stack2.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
            [stackXConstraint, stackYConstraint, stack2XConstraint, stack2YConstraint].forEach {NSLayoutConstraint.activate([$0])}
        }
    }
    
    //    MARK: @objc funcs
//    if any button is pressed, set the buttonSelected to pass forward in the prepare for segue, and then segue to nicknames vc
    @objc func levelBButtonPressed() {
        buttonSelected = 0
        goToNicknamesVC()
    }
    
    @objc func level1ButtonPressed() {
        buttonSelected = 1
        goToNicknamesVC()
    }
    
    @objc func sec45ButtonPressed() {
        buttonSelected = 2
        goToNicknamesVC()
    }
    
    @objc func sec16ButtonPressed() {
        buttonSelected = 3
        goToNicknamesVC()
    }
    
    @objc func fullDeckButtonPressed() {
        buttonSelected = 4
        goToNicknamesVC()
    }
    
    @objc func trebleOnlyButtonPressed() {
        buttonSelected = 5
        goToNicknamesVC()
    }
    
    @objc func bassOnlyButtonPressed() {
        buttonSelected = 6
        goToNicknamesVC()
    }
    
//    MARK: segue
//    pass the button selected forward to the nicknames vc
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
        //pass to segue
        let newVC = segue.destination as! NicknamesViewController
        newVC.buttonSelectedAndPassed = buttonSelected
    }
//    segue to nicknames VC
    func goToNicknamesVC() {
        performSegue(withIdentifier: Constants.DECK_TO_NICKNAMES_VC_SEGUE_IDENTIFIER, sender: self)
    }
}
