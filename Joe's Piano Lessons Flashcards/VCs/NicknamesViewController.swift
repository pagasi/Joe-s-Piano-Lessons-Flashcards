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
    @IBOutlet weak var nicknamesViewLabel: UILabel!
    @IBOutlet weak var switchHorizontalStack: UIStackView!
    
    var letterArray: [Letter] = []
    var ArrayOfLettersSwitchedOff = [Int]()
    var buttonSelectedAndPassed: Int = 0
    
    lazy var fortyFiveSecondButton: SelectionButton = {
        let button = SelectionButton(title: "45 Sec")
        button.addTarget(self, action: #selector(fortyFiveSecondButtonPressed), for: .touchUpInside)
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        return button
    }()
    
    lazy var sixteenSecondButton: SelectionButton = {
        let button = SelectionButton(title: "16 Sec")
        button.addTarget(self, action: #selector(sixteenSecondButtonPressed), for: .touchUpInside)
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        return button
    }()
    
    lazy var beginnerButton: SelectionButton = {
        let button = SelectionButton(title: "Beginner")
        button.addTarget(self, action: #selector(beginnerButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var fullDeckButton: SelectionButton = {
        let button = SelectionButton(title: "16 Sec")
        button.addTarget(self, action: #selector(fullDeckButtonPressed), for: .touchUpInside)
        return button
    }()
    
    
    //MARK:  life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //assign NicknamesViewController as the delegate and data source for the table view in the NicknamesViewController
        nicknamesTableView.delegate = self
        nicknamesTableView.dataSource = self

        //add programmatic buttons to the stackview
        switchHorizontalStack.addArrangedSubview(fortyFiveSecondButton)
        switchHorizontalStack.addArrangedSubview(sixteenSecondButton)
        switchHorizontalStack.addArrangedSubview(beginnerButton)
        switchHorizontalStack.addArrangedSubview(fullDeckButton)
        
    } //end viewDidLoasd
    
    //    MARK: @objc funcs
    //setup switch functions
    @objc func fortyFiveSecondButtonPressed() {
        ArrayOfLettersSwitchedOff = [4,3,2,0]
        switchTheSwitches()
    }
    @objc func sixteenSecondButtonPressed() {
        ArrayOfLettersSwitchedOff = [4,2,0]
        switchTheSwitches()
    }
    
    @objc func beginnerButtonPressed() {
        ArrayOfLettersSwitchedOff = [3,1,0]
        switchTheSwitches()
    }
    
    @objc func fullDeckButtonPressed() {
        ArrayOfLettersSwitchedOff = [0]
        switchTheSwitches()
    }
    
    
    
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
        //pass the selected array from deck selection vc
        destinationVC.chosenArrayPassed = buttonSelectedAndPassed
        //set the arrays of unwanted cards equal in both view controllers
        destinationVC.passingArrayOfLettersSwitchedOff = ArrayOfLettersSwitchedOff
    }
    
    func switchTheSwitches() {
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
        //create the array of all cards
        let letterArray = NicknamesVCInstanceOfNicknamesArray.createArray(chosenArray: buttonSelectedAndPassed)
        //set the class property letterArray as a list of all the cards as well so that it can be used in other methods
        self.letterArray = letterArray
        
        //tell tableview how many cells it will need based on the flashcard data
        return letterArray.count
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switchTheSwitches()
        //pull the data from the "array of all cards" for each cell
        let letter = letterArray[indexPath.row]
        
        //assign pulled data to the appropriate cell and its parts
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.NICKNAMES_CELL_REUSE_IDENTIFIER) as! CustomTableViewCell
        
        //customize the cellview for rounded corners
        cell.cellView.translatesAutoresizingMaskIntoConstraints = false
        cell.cellView.layer.cornerRadius = 10
        cell.cellView.layer.shadowRadius = 30
        cell.cellView.layer.shadowColor = UIColor.black.cgColor
        //set the text in each cell to the nicknames of each card
        cell.nicknamesLabel.text = letter.letterNickname
        
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
