//
//  SelectionButton.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 2/9/21.
//

import UIKit

class SelectionButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(title: String) {
        super.init(frame: .zero)
        backgroundColor = .systemBlue
        setTitle(title, for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        setTitleColor(.black, for: .normal)
        layer.shadowRadius = 15
        layer.borderWidth = 2
        layer.cornerRadius = 10
        layer.shadowColor = UIColor.black.cgColor
        layer.masksToBounds = false
        clipsToBounds = true
        heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


}


