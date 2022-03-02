//
//  SettingsViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 3/2/22.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func userDidChange(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            print("switch to user 0")
            //set userdefaults to user 1
        case 1:
            print("switch to user 1")
            //set userdefaults to user 2
        default:
            break
        }
            
        }
    }
    



