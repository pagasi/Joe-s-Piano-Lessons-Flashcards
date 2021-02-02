//
//  CartoonViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/25/21.
//

import UIKit

class CartoonViewController: UIViewController {

    @IBOutlet weak var cartoonImage: UIImageView!
    var passingVar: Int = 0
    var cartoonVCInstanceOfNicknamesArray = NicknamesArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create the array of flashcards to use in the CartoonVC
        let cartoonVCArray = cartoonVCInstanceOfNicknamesArray.createArray()
        
        //set the cartoonVC image to the missed card from FlashcardVC
        cartoonImage.image = UIImage(named: cartoonVCArray[passingVar].letterNickname)
    }
    
}
