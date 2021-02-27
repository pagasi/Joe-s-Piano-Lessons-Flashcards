//
//  ScalesViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 2/11/21.
//

import UIKit

class ScalesViewController: UIViewController {
    
    let VCInstanceOfScaleData = ScaleData()
    var theArrayForVC2: [ScaleModel] = []
    var inLandscape = UIDevice.current.orientation.isLandscape
    
    let scaleTableView: UITableView = {
        let table = UITableView()
        table.register(ScalesTableViewCell.self, forCellReuseIdentifier: Constants.SCALES_CELL_IDENTIFIER)
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
        
        scaleTableView.backgroundColor = .white
        
        theArrayForVC2 = VCInstanceOfScaleData.createArray()
    }
}



extension ScalesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theArrayForVC2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.SCALES_CELL_IDENTIFIER, for: indexPath) as! ScalesTableViewCell
        cell.backgroundColor = .white
        cell.fullStackSetup(tableIndex: indexPath.row, cellScaleDataChoice: 0, inLandscape: UIDevice.current.orientation.isLandscape)
        if inLandscape != UIDevice.current.orientation.isLandscape {
            tableView.reloadData()
            inLandscape = UIDevice.current.orientation.isLandscape
        }
        
        return cell
    }
}
