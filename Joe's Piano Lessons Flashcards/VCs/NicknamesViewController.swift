//
//  NicknamesViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/25/21.
//

import UIKit

class NicknamesViewController: UIViewController  {
    
    //MARK: init
    
    @IBOutlet weak var mainStackNicknamesVC: UIStackView!
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var nicknamesTableView: UITableView!
    @IBOutlet weak var nicknamesImage: UIImageView!
    @IBOutlet weak var nicknamesViewLabel: UILabel!

    
    var letterArray: [Letter] = []
    var ArrayOfLettersSwitchedOff = [Int]()
    var buttonSelectedAndPassed: Int = 0
    let defaults = UserDefaults.standard

    //MARK:  life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //assign NicknamesViewController as the delegate and data source for the table view in the NicknamesViewController
        nicknamesTableView.delegate = self
        nicknamesTableView.dataSource = self
        
//        run the viewdidload functions
        goButtonSetup()
        checkUserDefaults()
        stackRotationNicknameVC()
    } //end viewDidLoasd
    
//    handle device orientation for the View controller if the device rotates
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        stackRotationNicknameVC()
    }
    
    
    //MARK: methods
//    handle device rotations
    func stackRotationNicknameVC(){
//        check the new orientation of the device and impliment the stack orientation needed
        if UIDevice.current.orientation.isLandscape == true {
            mainStackNicknamesVC.axis = .horizontal
        } else {
            mainStackNicknamesVC.axis = .vertical
        }
    }
    
//    setup the go button
    func goButtonSetup() {
        goButton.layer.cornerRadius = 10
        goButton.setTitleShadowColor(.black, for: .normal)
        goButton.titleLabel?.shadowOffset = CGSize(width: 2, height: 2)
    }
    
//    check if the user is selecting the same deck they used last time so that the same letters they chose manually last time can be provided now
   func checkUserDefaults() {
    let defaultsCheck = defaults.integer(forKey: Constants.CHOSEN_ARRAY_PASSED)
    if buttonSelectedAndPassed == defaultsCheck {
        ArrayOfLettersSwitchedOff = defaults.object(forKey: Constants.PASSING_ARRAY_OF_LETTERS_SWITCHED_OFF) as? [Int] ?? []
        }
    }
    
    
    //    MARK: @objc funcs
    
    
    
    //  MARK: implement in future version
    //functions suggested by wife, need implimenting in future versions
//    implement a master switch
//
//    @objc func switchAllOn() {
//        ArrayOfLettersSwitchedOff = []
//        switchTheSwitches()
//    }
//    @objc func switchAllOff() {
//        ArrayOfLettersSwitchedOff = letterArray
//        switchTheSwitches()
//    }

//    when a switch is flipped, handle the array organizing
    @objc func switchDidChange(_ sender: UISwitch){
        //track which switch is being flipped
//        print("sender is \(sender.tag)")
        
        //check if the flipped switch is switched on now.  if so check if that card is currently in the "dont use these cards(ArrayOfLettersSwitchedOff)" list
        if sender.isOn == true && ArrayOfLettersSwitchedOff.contains(sender.tag) == true {
            //find the index of the card in the "array of letters switched off"
            if let i = ArrayOfLettersSwitchedOff.firstIndex(of: sender.tag) {
                //remove that card from the array of letters switched off
                ArrayOfLettersSwitchedOff.remove(at: i)
            }
        }// end if sender.isOn == true
        //check if the flipped switch is off now.  if so make sure that card wasn't already removed from the "don't use these cards array(ArrayOfLettersSwitchedOff)"
        if sender.isOn == false && ArrayOfLettersSwitchedOff.contains(sender.tag) == false {
            //add the selected card to the "don't use these cards array"
            ArrayOfLettersSwitchedOff.append(sender.tag)
        } // end if sender.isOn == false
    } // end objc
    
    //MARK: prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.GO_BUTTON_TO_FLASHCARDS_SEGUE {
        //for when the GO! button is pressed to start the flashcard run
        //sort the array of letters that are not desired from largest to smallest to prepare to remove these letters from the array of All the cards (if this is not done, when someone removes a lower number such as 0, all the other card indexes shift down one index so that the next card to get removed will be attached to the wrong index.  The wrong card will be removed, or worse, the app crashes
        ArrayOfLettersSwitchedOff.sort(by: >)
        let destinationVC = segue.destination as! FlashCardViewController
        //pass the selected array from deck selection vc
        destinationVC.chosenArrayPassed = buttonSelectedAndPassed
        //set the arrays of unwanted cards equal in both view controllers
        destinationVC.passingArrayOfLettersSwitchedOff = ArrayOfLettersSwitchedOff
        //add chosenArrayPassed & passingArrayOfLettersSwitchedOff to the save
            defaults.setValue(buttonSelectedAndPassed, forKey: Constants.CHOSEN_ARRAY_PASSED)
            defaults.setValue(ArrayOfLettersSwitchedOff, forKey: Constants.PASSING_ARRAY_OF_LETTERS_SWITCHED_OFF)
    }
    }
//        handle matching the arrays to the switches and adjust the switches to match the array as needed
    func switchTheSwitches() {
        //put all cell switches in their proper position
        for index in 0...letterArray.count - 1 {
            if ArrayOfLettersSwitchedOff.contains(index) {
                letterArray[index].letterSwitch.setOn(false, animated: false)
            } else {
                letterArray[index].letterSwitch.setOn(true, animated: false)
            }
        }
    }
    
}// end class

//MARK:  table view extensions

extension NicknamesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //create an instance of the class that runs the method to create the list of all the cards
        let NicknamesVCInstanceOfNicknamesArray = NicknamesArray()
        //create the array of all cards using the user's selected deck
        let letterArray = NicknamesVCInstanceOfNicknamesArray.createArray(chosenArray: buttonSelectedAndPassed)
        //set the class property letterArray as a list of all the cards as well so that it can be used in other methods
        self.letterArray = letterArray
        
        //tell tableview how many cells it will need based on the flashcard data
        return letterArray.count
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        handle the switches so that they match the chosen arrays
        switchTheSwitches()
        //pull the data from the array of user's chosen deck for each cell
        let letter = letterArray[indexPath.row]
        
        //assign pulled data to the appropriate cell and its parts
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.NICKNAMES_CELL_REUSE_IDENTIFIER) as! CustomTableViewCell
        
        //customize the cellview
        cell.cellView.translatesAutoresizingMaskIntoConstraints = false
        cell.cellView.layer.cornerRadius = 10
        cell.backgroundColor = .clear
        
        //set the text in each cell to the nicknames of each card
        cell.nicknamesLabel.text = letter.letterNickname
        cell.nicknamesLabel.textColor = .white
        cell.nicknamesLabel.font = UIFont(name: Constants.HELVETICA_FONT, size: 18)
        cell.nicknamesLabel.textAlignment = .center
        cell.nicknamesLabel.shadowColor = .black
        cell.nicknamesLabel.shadowOffset = CGSize(width: 2, height: 2)
        
        //add switch programmatically so that i can track tag numbers
        let switchView = UISwitch(frame: .zero)
        switchView.isHighlighted = true
        //start all switches on their appropriate on or off status
        ArrayOfLettersSwitchedOff.contains(indexPath.row) ? switchView.setOn(false, animated: false) : switchView.setOn(true, animated: true)
        //individualize each switch with a tag
        switchView.tag = indexPath.row
        //set target for when the switch is activated
        switchView.addTarget(self, action: #selector(self.switchDidChange(_:)), for: .valueChanged)
        //add the switch to the accessory view of each cell
        cell.accessoryView = switchView
        self.letterArray[indexPath.row].letterSwitch = switchView
        //apply to tableview
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //when a cell is selected display the cartoon for that cell
        nicknamesImage.image = UIImage(named: letterArray[indexPath.row].letterNickname)
        nicknamesViewLabel.alpha = 0
        
        
        
    }
    
}
