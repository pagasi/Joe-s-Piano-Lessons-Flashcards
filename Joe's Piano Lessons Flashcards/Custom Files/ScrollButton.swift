//
//  ScrollButton.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 4/23/22.
//

import Foundation
import UIKit

class ScrollButton: UIButton {

    init(title: String) {
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 15.adjusted)
        //titleLabel?.font = UIFont.boldSystemFont(ofSize: 15.adjusted)
        setTitleColor(.black, for: .normal)
        layer.masksToBounds = false
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


}

