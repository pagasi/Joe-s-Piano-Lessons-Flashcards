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

    var mainStack = UIStackView()
    var stack = UIStackView()
    var stack2 = UIStackView()
    var buttonSelected: Int = 0
    var stackXConstraint = NSLayoutConstraint()
    var stackYConstraint = NSLayoutConstraint()
    var stack2XConstraint = NSLayoutConstraint()
    var stack2YConstraint = NSLayoutConstraint()
    
//    init(stackXConstraint: NSLayoutConstraint, stackYConstraint: NSLayoutConstraint, stack2XConstraint: NSLayoutConstraint, var stack2YConstraint: NSLayoutConstraint){
//        self.stackXConstraint = stackXConstraint
//        self.stackYConstraint = stackYConstraint
//        self.stack2XConstraint = stack2XConstraint
//        self.stack2YConstraint = stack2YConstraint
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    
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
        
        stackConstraints()
    }
    
    func stackConstraints() {
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack2.translatesAutoresizingMaskIntoConstraints = false

        stack.widthAnchor.constraint(equalToConstant: 250).isActive = true
        stack2.widthAnchor.constraint(equalToConstant: 250).isActive = true

        stackRotation()
    }
    
    //    MARK: willTransition
        override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
            
            stackRotation()
        }
    
    func stackRotation() {
        //if goes into landscape
        if UIDevice.current.orientation.isLandscape == true {

            [stackXConstraint, stackYConstraint, stack2XConstraint, stack2YConstraint].forEach {NSLayoutConstraint.deactivate([$0])}
            
            stackXConstraint = stack.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: -140)
            stackYConstraint = stack.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
            stack2XConstraint = stack2.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 140)
            stack2YConstraint = stack2.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
            
            [stackXConstraint, stackYConstraint, stack2XConstraint, stack2YConstraint].forEach {NSLayoutConstraint.activate([$0])}
            //[fortyFiveSecondButton, sixteenSecondButton, beginnerButton, fullDeckButton].forEach {switchHorizontalStack.addArrangedSubview($0)}
        } else {
//                mainStack.axis = .vertical
//                mainStack.widthAnchor.constraint(equalToConstant: 250).isActive = true
            
            [stackXConstraint, stackYConstraint, stack2XConstraint, stack2YConstraint].forEach {NSLayoutConstraint.deactivate([$0])}
            
            stackYConstraint = stack.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -120)
            stackXConstraint = stack.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
            stack2YConstraint = stack2.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 90)
            stack2XConstraint = stack2.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
            [stackXConstraint, stackYConstraint, stack2XConstraint, stack2YConstraint].forEach {NSLayoutConstraint.activate([$0])}
        }
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
