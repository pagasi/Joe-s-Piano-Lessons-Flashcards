//
//  AboutViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/25/21.
//

import UIKit

class AboutViewController: UIViewController {
    @IBOutlet weak var aboutLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        add privacy policy
        aboutLabel.text = """
        Joe's Piano Lessons Flash Cards
        Privacy Policy and Terms and Conditions

        version 3.0
        April 2022
        -changes the "beginner" deck to two decks: "B&C" and "Primer"
        -adds scrolling buttons for scales
        -fixes bug that would lose saved deck information for user 1
        
        version 2.1
        April 2022
        -fixes bug that wouldn't allow user 1's name to appear on the main screen if no user was actively selected on the switch
        
        version 2.0
        April 2022
        -Adds the ability to use two users through a settings button on the main screen to keep seperate decks for each user.
        -Fixes the bug that allows buttons to go off the screen on smaller phone sizes.

        Introduction:
        
        By using Joe's Piano Lessons Flash Cards, you agree to our Terms of Use and our Privacy Policy. I invite you to fully read this page and make sure you understand its content prior to using Joe's Piano Lessons Flash Cards.



        Terms of Use & Privacy Policy:

        Whitney Naquin operates the website and the Joe's Piano Lessons Flash Cards mobile application (name on the App Store subject to change for search and discovery purposes).

        The app is made available to you on an "as is", with all faults and "as available" basis. I cannot guarantee that the app will function or maintain the same level of service in the future. That is applicable for both free and paid users.

        Please read this section carefully since it limits the liability of Joe's Piano Lessons Flash Cards. By downloading Joe's Piano Lessons Flash Cards, your use of the app is at your own discretion and risk. Joe's Piano Lessons Flash Cards makes no claims or promises with respect to the quality, the accuracy or reliability of the app, its safety or security, or its content.



        Data:

        Joe's Piano Lessons Flash Cards does not collect any data from the user using a third party service.



        I have a question about my data:

        If you have a question about this privacy and how your data is collected, used and stored when you use Joe's Piano Lessons Flash Cards, please feel free to email me at jugglinpagasi2@yahoo.com with the subject line "Data Question" and let me know how I can help you.



        Changes and Updates:

        If Joe's Piano Lessons Flash Cards makes changes to Terms and Conditions or Privacy Policy, these changes will be posted on this page in a timely manner. We reserve the right to modify these terms & conditions and/or privacy policy at any time, so please review it frequently (at least on every app update).
        """
        
    }
    






}
