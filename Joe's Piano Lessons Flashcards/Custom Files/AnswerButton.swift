//
//  AnswerButton.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 2/12/21.
//

import UIKit

class AnswerButton: UIButton {

        //MARK:  needs to be set for answer buttons on flashcards
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
            
//            backgroundColor = .systemBlue
//            setTitle(title, for: .normal)
//            titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
//            setTitleColor(.black, for: .normal)
//            layer.shadowRadius = 15
//            layer.borderWidth = 2
//            layer.cornerRadius = 10
//            layer.shadowColor = UIColor.black.cgColor
//            layer.masksToBounds = false
//            clipsToBounds = true
//            heightAnchor.constraint(equalToConstant: 45).isActive = true
//
            translatesAutoresizingMaskIntoConstraints = false
            heightAnchor.constraint(equalToConstant: 50).isActive = true
            widthAnchor.constraint(equalToConstant: 40).isActive = true
        }
        
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        


    }
