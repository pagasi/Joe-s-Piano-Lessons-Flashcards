//
//  SettingsViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 3/2/22.
//

import UIKit

class SettingsViewController: UIViewController {

    let defaults = UserDefaults.standard
    var changedUserName = ""
    var savedUser1Name = ""
    var savedUser2Name = ""
    
    @IBOutlet weak var userSwitch: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //set the names for the users if they are saved
        savedUser1Name = defaults.string(forKey: Constants.USER_NAME1) ?? "User 1"
        savedUser2Name = defaults.string(forKey: Constants.USER_NAME2) ?? "User 2"
        
        userSwitch.setTitle(savedUser1Name, forSegmentAt: 0)
        userSwitch.setTitle(savedUser2Name, forSegmentAt: 1)
        
        //check to see what the most recent selected user was
        let userCheck = defaults.integer(forKey: Constants.USER_SELECTED)
        if userCheck == 2 {
            userSwitch.selectedSegmentIndex = 1
        }
        
    }
    
    //MARK: methods
    
    //popup code
    func showAlert() {
        let alert = UIAlertController(title: "Change user name", message: "type a new user name", preferredStyle: .alert)
        
        
        
        alert.addTextField { textField in
            textField.placeholder = "type new user name here"
            textField.keyboardType = .default
            textField.returnKeyType = .next
        }
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "save", style: .default, handler: { [self] action in
            guard let fieldsArray = alert.textFields, fieldsArray.count == 1 else {
                return
            }
            
            let newUserNameField = fieldsArray[0]
            guard let newUserName = newUserNameField.text, !newUserName.isEmpty else {
                return
            }
           
            self.userSwitch.setTitle(newUserName, forSegmentAt: userSwitch.selectedSegmentIndex)
            if userSwitch.selectedSegmentIndex == 0 {
                defaults.setValue(newUserName, forKey: Constants.USER_NAME1)
            } else if userSwitch.selectedSegmentIndex == 1 {
                defaults.setValue(newUserName, forKey: Constants.USER_NAME2)
            }
        }))
        
        
        present(alert, animated: true)
    }
    
    
    //MARK: IBActions
    @IBAction func editUserNameButtonTapped(_ sender: Any) {
        
        showAlert()
        
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
    



