//
//  SettingsViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 3/2/22.
//

import UIKit

class SettingsViewController: UIViewController {

    let defaults = UserDefaults.standard
    
    @IBOutlet weak var userSwitch: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let userCheck = defaults.integer(forKey: Constants.USER_SELECTED)
        if userCheck == 2 {
            userSwitch.selectedSegmentIndex = 1
        }
        
    }
    

    @IBAction func userDidChange(_ sender: UISegmentedControl) {
        

        
        switch sender.selectedSegmentIndex {
        case 0:
//            print("switch to user 1")
            //set userdefaults to user 1
            defaults.setValue(1, forKey: Constants.USER_SELECTED)
            
        case 1:
//            print("switch to user 2")
            //set userdefaults to user 2
            defaults.setValue(2, forKey: Constants.USER_SELECTED)
        default:
            break
        }
            
        }
    }
    



