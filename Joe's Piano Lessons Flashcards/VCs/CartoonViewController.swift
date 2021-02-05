//
//  CartoonViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/25/21.
//

import UIKit

class CartoonViewController: UIViewController {

    @IBOutlet weak var cartoonImage: UIImageView!
    var passingVar: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the cartoonVC image to the missed card from FlashcardVC
        cartoonImage.image = UIImage(named: passingVar)
    }
    
}
