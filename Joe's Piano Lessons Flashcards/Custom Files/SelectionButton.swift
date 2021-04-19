//
//  SelectionButton.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 2/9/21.
//

import UIKit

// SelectionButton class provides the configuration for buttons on the Main VC and DeckSelection VC
class SelectionButton: UIButton {

//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
    
    init(title: String) {
        super.init(frame: .zero)
        backgroundColor = .systemBlue
        layer.opacity = 1
        setTitle(title, for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        setTitleColor(.black, for: .normal)
        layer.borderWidth = 2
        layer.cornerRadius = 10
        layer.shadowColor = UIColor.black.cgColor
        layer.masksToBounds = false
//        clipsToBounds = true
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 5, height: 5)
        layer.shadowOpacity = 1
        
        
//        translatesAutoresizingMaskIntoConstraints = false
//        heightAnchor.constraint(equalToConstant: 50).isActive = true
//        widthAnchor.constraint(equalToConstant: 100).isActive = true
        heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


}


