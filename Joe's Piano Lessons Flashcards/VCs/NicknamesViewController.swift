//
//  NicknamesViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/25/21.
//

import UIKit

class NicknamesViewController: UIViewController  {
    
    //MARK: init
    
    @IBOutlet weak var nicknamesTableView: UITableView!
    @IBOutlet weak var nicknamesImage: UIImageView!
    @IBOutlet weak var BeginnerButton: UIButton!
    @IBOutlet weak var fortyFiveSecondButton: UIButton!
    @IBOutlet weak var sixteenSecondButton: UIButton!
    @IBOutlet weak var fullDeckButton: UIButton!
    @IBOutlet weak var nicknamesViewLabel: UILabel!
    
    var letterArray: [Letter] = []
    var ArrayOfLettersSwitchedOff = [Int]()
    
    //MARK:  life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //assign NicknamesViewController as the delegate and data source for the table view in the NicknamesViewController
        nicknamesTableView.delegate = self
        nicknamesTableView.dataSource = self
        
        //        customize buttons
        BeginnerButton.layer.cornerRadius = 20
        fortyFiveSecondButton.layer.cornerRadius = 20
        sixteenSecondButton.layer.cornerRadius = 20
        fullDeckButton.layer.cornerRadius = 20
        
        
    } //end viewDidLoasd
    
    //    MARK: IBActions
    
    @IBAction func beginnerButtonPressed(_ sender: Any) {
        ArrayOfLettersSwitchedOff = [4,3,2,1]
        switchTheSwitches()
    }
    @IBAction func fortyFiveSecondButtonPressed(_ sender: Any) {
        ArrayOfLettersSwitchedOff = [4,3,2,0]
        switchTheSwitches()
    }
    @IBAction func sixteenSecondButtonPressed(_ sender: Any) {
        ArrayOfLettersSwitchedOff = [4,3,1,0]
        switchTheSwitches()
    }
    @IBAction func fullDeckButtonPressed(_ sender: Any) {
        ArrayOfLettersSwitchedOff = [3,2,1,0]
        switchTheSwitches()
    }
    
    
    //    MARK: @objc funcs
    @objc func switchDidChange(_ sender: UISwitch){
        //track which switch is being flipped
        print("sender is \(sender.tag)")
        
        //check if the flipped switch is switched on now.  if so check if that card is currently in the "dont use these cards" list
        if sender.isOn == true && ArrayOfLettersSwitchedOff.contains(sender.tag) == true {
            //find the index of the card in the "array of letters switched off"
            if let i = ArrayOfLettersSwitchedOff.firstIndex(of: sender.tag) {
                //remove that card from the array of letters switched off
                ArrayOfLettersSwitchedOff.remove(at: i)
            }
        }// end if
        //check if the flipped switch is off now.  if so make sure that card wasn't already removed from the "don't use these cards array"
        if sender.isOn == false && ArrayOfLettersSwitchedOff.contains(sender.tag) == false {
            //add the selected card to the "don't use these cards array"
            ArrayOfLettersSwitchedOff.append(sender.tag)
        } // end if
    } // end objc
    
    //MARK: prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //for when the GO! button is pressed to start the flashcard run
        //sort the array of letters that are not desired from largest to smallest to prepare to remove these letters from the array of All the cards (if this is not done, when someone removes a lower number such as 0, all the other card indexes shift down one index so that the next card to get removed will be attached to the wrong index.  The wrong card will be removed, or worse, the app crashes
        ArrayOfLettersSwitchedOff.sort(by: >)
        let destinationVC = segue.destination as! FlashCardViewController
        //set the arrays of unwanted cards equal in both view controllers
        destinationVC.passingArrayOfLettersSwitchedOff = ArrayOfLettersSwitchedOff
    }
    
    func switchTheSwitches() {
        for index in 0...letterArray.count - 1 {
            if ArrayOfLettersSwitchedOff.contains(index) {
                letterArray[index].letterSwitch.setOn(false, animated: true)
            } else {
                letterArray[index].letterSwitch.setOn(true, animated: true)
            }
        }
    }
    
}// end class

//MARK:  table view extensions

extension NicknamesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //create an instance of the class that runs the method to create the list of all the cards
        let NicknamesVCInstanceOfNicknamesArray = NicknamesArray()
        //create the array of all cards
        let letterArray = NicknamesVCInstanceOfNicknamesArray.createArray()
        //set the class property letterArray as a list of all the cards as well so that it can be used in other methods
        self.letterArray = letterArray
        
        //tell tableview how many cells it will need based on the flashcard data
        return letterArray.count
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //pull the data from the "array of all cards" for each cell
        let letter = letterArray[indexPath.row]
        
        //assign pulled data to the appropriate cell and its parts
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.NICKNAMES_CELL_REUSE_IDENTIFIER) as! CustomTableViewCell
        
        //customize the cellview for rounded corners
        cell.cellView.layer.cornerRadius = 20
        
        //set the text in each cell to the nicknames of each card
        cell.nicknamesLabel.text = letter.letterNickname
        
        //add switch programmatically so that i can track tag numbers
        let switchView = UISwitch(frame: .zero)
        //start all switches as ON
        switchView.setOn(true, animated: true)
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
