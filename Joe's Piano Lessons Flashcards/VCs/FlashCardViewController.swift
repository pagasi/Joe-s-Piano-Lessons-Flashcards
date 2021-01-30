//
//  FlashCardViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/25/21.
//

import UIKit

class FlashCardViewController: UIViewController {
    @IBOutlet weak var countTimerLabel: UILabel!
    @IBOutlet weak var grandStaffUIImage: UIImageView!
    
    var selectedButton: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func AButtonPressed(_ sender: Any) {
        selectedButton = "A"
    }
    @IBAction func BButtonPressed(_ sender: Any) {
        selectedButton = "B"
    }
    @IBAction func CButtonPressed(_ sender: Any) {
        selectedButton = "C"
    }
    @IBAction func DButtonPressed(_ sender: Any) {
        selectedButton = "D"
    }
    @IBAction func EButtonPressed(_ sender: Any) {
        selectedButton = "E"
    }
    @IBAction func FButtonPressed(_ sender: Any) {
        selectedButton = "F"
    }
    @IBAction func GButtonPressed(_ sender: Any) {
        selectedButton = "G"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
