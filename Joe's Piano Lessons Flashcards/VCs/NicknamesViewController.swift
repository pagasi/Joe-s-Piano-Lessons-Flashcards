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

    var letterArray: [Letter] = []
    var ArrayOfLettersSwitchedOff = [Int]()
    
    //MARK:  life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //assign NicknamesViewController as the delegate and data source for the table view in the NicknamesViewController
        nicknamesTableView.delegate = self
        nicknamesTableView.dataSource = self
        
    } //end viewDidLoasd
    
    @objc func switchDidChange(_ sender: UISwitch){
        print("sender is \(sender.tag)")
        
    if sender.isOn == true && ArrayOfLettersSwitchedOff.contains(sender.tag) == true {
        if let i = ArrayOfLettersSwitchedOff.firstIndex(of: sender.tag) {
            ArrayOfLettersSwitchedOff.remove(at: i)
        }
    }// end if
        if sender.isOn == false && ArrayOfLettersSwitchedOff.contains(sender.tag) == false {
            ArrayOfLettersSwitchedOff.append(sender.tag)
        } // end if
    } // end objc

    //MARK: prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        ArrayOfLettersSwitchedOff.sort(by: >)
                let destinationVC = segue.destination as! FlashCardViewController
        destinationVC.passingArrayOfLettersSwitchedOff = ArrayOfLettersSwitchedOff
}
    
}// end class

//MARK:  table view extensions

extension NicknamesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //set initialized letterArray var to the data for the flashcards to use in other methods
        let NicknamesVCInstanceOfNicknamesArray = NicknamesArray()
        let letterArray = NicknamesVCInstanceOfNicknamesArray.createArray()
        //set the class property letterArray so that it can be used in other methods
        self.letterArray = letterArray
        
        //tell tableview how many cells it will need based on the flashcard data
        return letterArray.count
        }
        
        

    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //pull the data from array for each cell
        let letter = letterArray[indexPath.row]
        
        //assign pulled data to the appropriate cell and its parts
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.NICKNAMES_CELL_REUSE_IDENTIFIER) as! CustomTableViewCell
        
        cell.cellView.layer.cornerRadius = 20
        cell.nicknamesLabel.text = letter.letterNickname
        
        //add switch programmatically so that i can track tag numbers
        let switchView = UISwitch(frame: .zero)
        switchView.setOn(true, animated: true)
        switchView.tag = indexPath.row
        switchView.addTarget(self, action: #selector(self.switchDidChange(_:)), for: .valueChanged)
        cell.accessoryView = switchView
        
        //apply to tableview
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //when a cell is selected display the cartoon for that cell
        nicknamesImage.image = UIImage(named: letterArray[indexPath.row].letterNickname)
        
    
    
    
}

}
