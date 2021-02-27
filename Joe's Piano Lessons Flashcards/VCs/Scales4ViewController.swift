//
//  Scales4ViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 2/16/21.
//

import UIKit

class Scales4ViewController: UIViewController {

    let VCInstanceOfScaleData = ScaleData4()
    var theArrayForVC4: [ScaleModel] = []
    var inLandscape:Bool = UIDevice.current.orientation.isLandscape
    
    let scaleTableView: UITableView = {
        let table = UITableView()
        table.register(ScalesTableViewCell.self, forCellReuseIdentifier: Constants.SCALES_CELL_IDENTIFIER4)
        table.rowHeight = 144
        table.allowsSelection = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scaleTableView.delegate = self
        scaleTableView.dataSource = self
        
        view.addSubview(scaleTableView)
        scaleTableView.translatesAutoresizingMaskIntoConstraints = false
        scaleTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scaleTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scaleTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scaleTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        scaleTableView.backgroundColor = .black
        
        theArrayForVC4 = VCInstanceOfScaleData.createArray()
    }
    
//    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
//        if UIDevice.current.orientation.isLandscape == true {
//            //text bold font
//            inLandscape = true
//        } else {
//            //text normal font
//            inLandscape = false
//        }
//    }
}



extension Scales4ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theArrayForVC4.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.SCALES_CELL_IDENTIFIER4, for: indexPath) as! ScalesTableViewCell
        cell.backgroundColor = .white
        cell.fullStackSetup(tableIndex: indexPath.row, cellScaleDataChoice: 3, inLandscape: UIDevice.current.orientation.isLandscape)
        if inLandscape != UIDevice.current.orientation.isLandscape {
            tableView.reloadData()
            inLandscape = UIDevice.current.orientation.isLandscape
        }
        
        return cell
    }
}
