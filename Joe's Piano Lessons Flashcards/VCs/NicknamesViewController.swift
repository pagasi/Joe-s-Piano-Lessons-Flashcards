//
//  NicknamesViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/25/21.
//

import UIKit

class NicknamesViewController: UIViewController  {

    @IBOutlet weak var nicknamesTableView: UITableView!

    @IBOutlet weak var nicknamesImage: UIImageView!


    
    var letterArray: [Letter] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nicknamesTableView.delegate = self
        nicknamesTableView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    func createArray() -> [Letter]{
        var tempArray: [Letter] = []
        
        let letter0: Letter = Letter(letterNickname: "Cat C")
        let letter1: Letter = Letter(letterNickname: "Dangling D")
            
        tempArray.append(letter0)
        tempArray.append(letter1)
        
        return tempArray
    }

}

extension NicknamesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let letterArray = createArray()
        self.letterArray = letterArray
        return letterArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let letter = letterArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.NICKNAMES_CELL_REUSE_IDENTIFIER) as! CustomTableViewCell
        
        cell.nicknamesLabel.text = letter.letterNickname
        
        return cell
    }
    
    
}
