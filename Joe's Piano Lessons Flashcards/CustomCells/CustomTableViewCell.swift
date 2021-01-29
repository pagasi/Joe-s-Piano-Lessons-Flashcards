//
//  CustomTableViewCell.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/27/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var nicknamesLabel: UILabel!

    

    
    func setCell(letterSet: Letter) -> Letter {
        var finishedLetter = Letter(letterNickname: letterSet.letterNickname)
        
        
        finishedLetter.letterNickname = letterSet.letterNickname
       
        return finishedLetter
    }
}
