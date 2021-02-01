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
    
    //MARK:  life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //assign NicknamesViewController as the delegate and data source for the table view
        nicknamesTableView.delegate = self
        nicknamesTableView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    


}

//MARK:  table view extensions and setup

extension NicknamesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //set initialized letterArray var to the data for the flashcards to use in other methods
        let NicknamesVCInstanceOfNicknamesArray = NicknamesArray()
        let letterArray = NicknamesVCInstanceOfNicknamesArray.createArray()
        self.letterArray = letterArray
        
        //tell tableview how many cells it will need based on the flashcard data
        return letterArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //pull the data from array for each cell
        let letter = letterArray[indexPath.row]
        
        //assign pulled data to the appropriate cell and its parts
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.NICKNAMES_CELL_REUSE_IDENTIFIER) as! CustomTableViewCell
        
        cell.nicknamesLabel.text = letter.letterNickname
        
        //apply to tableview
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //when a cell is selected display the cartoon for that cell
        nicknamesImage.image = UIImage(named: letterArray[indexPath.row].letterNickname)
        
        
    }
    
    
}
