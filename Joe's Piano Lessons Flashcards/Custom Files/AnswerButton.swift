//
//  AnswerButton.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 2/12/21.
//

import UIKit
// the AnswerButton class provides configurations for the buttons that give the answers during a flashcard run
class AnswerButton: UIButton {
    
    init(title: String) {
        super.init(frame: .zero)
        
        backgroundColor = UIColor.darkGray
        layer.cornerRadius = 5
        setTitle(title, for: .normal)
        titleLabel?.font = UIFont(name: "Helvetica", size: 30)
        setTitleColor(UIColor.white, for: .normal)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 5, height: 5)
        layer.shadowOpacity = 1
        
        translatesAutoresizingMaskIntoConstraints = false
        
        heightAnchor.constraint(equalToConstant: 50.adjusted).isActive = true
        widthAnchor.constraint(equalToConstant: 40.adjusted).isActive = true
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
