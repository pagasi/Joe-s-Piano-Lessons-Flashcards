//
//  ScalesViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 2/11/21.
//

import UIKit

class ScalesViewController: UIViewController {
    
//    set scale data to Major Scales one octave
    let VCInstanceOfScaleData = ScaleData()
    var theArrayForVC1: [ScaleModel] = []
    var inLandscape = UIDevice.current.orientation.isLandscape
    
//    lazy var cMajorButton: UIButton = {
//        let button = UIButton()
//
//        button.addTarget(self, action: #selector(levelBButtonPressed), for: .touchUpInside)
//        return button
//    }()

    
//    create table programattically
    let scaleTableView: UITableView = {
        let table = UITableView()
        table.register(ScalesTableViewCell.self, forCellReuseIdentifier: Constants.SCALES_CELL_IDENTIFIER)
        table.rowHeight = 144
        table.allowsSelection = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        set delegate and dataSource for tableview as self
        scaleTableView.delegate = self
        scaleTableView.dataSource = self
        
//        add the tableview to the main view and set constraints
        view.addSubview(scaleTableView)
        scaleTableView.translatesAutoresizingMaskIntoConstraints = false
        scaleTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scaleTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scaleTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scaleTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scaleTableView.backgroundColor = .white
        
        theArrayForVC1 = VCInstanceOfScaleData.createArray()
    }
}



extension ScalesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theArrayForVC1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.SCALES_CELL_IDENTIFIER, for: indexPath) as! ScalesTableViewCell
        
//        setup the cell
        cell.backgroundColor = .white
        
//        run the stack setup inside the cell using scalesTableViewCell.swift methods
        cell.fullStackSetup(tableIndex: indexPath.row, cellScaleDataChoice: 0, inLandscape: UIDevice.current.orientation.isLandscape)
        if inLandscape != UIDevice.current.orientation.isLandscape {
            tableView.reloadData()
            inLandscape = UIDevice.current.orientation.isLandscape
        }
        
        return cell
    }
}
