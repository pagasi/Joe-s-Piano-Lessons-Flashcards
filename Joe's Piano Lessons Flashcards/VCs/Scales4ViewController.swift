//
//  Scales4ViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 2/16/21.
//

import UIKit

class Scales4ViewController: UIViewController {

    //    set scale data to Minor Scales two octaves
    let VCInstanceOfScaleData = ScaleData4()
    var theArrayForVC4: [ScaleModel] = []
    var inLandscape:Bool = UIDevice.current.orientation.isLandscape
    
    //    create table programattically
    let scaleTableView: UITableView = {
        let table = UITableView()
        table.register(ScalesTableViewCell.self, forCellReuseIdentifier: Constants.SCALES_CELL_IDENTIFIER4)
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
        
        scaleTableView.backgroundColor = .black
        
        theArrayForVC4 = VCInstanceOfScaleData.createArray()
    }
}

extension Scales4ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theArrayForVC4.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.SCALES_CELL_IDENTIFIER4, for: indexPath) as! ScalesTableViewCell
        
        //        setup the cell
        cell.backgroundColor = .white
        
        //        run the stack setup inside the cell using scalesTableViewCell.swift methods
        cell.fullStackSetup(tableIndex: indexPath.row, cellScaleDataChoice: 3, inLandscape: UIDevice.current.orientation.isLandscape)
        if inLandscape != UIDevice.current.orientation.isLandscape {
            tableView.reloadData()
            inLandscape = UIDevice.current.orientation.isLandscape
        }
        
        return cell
    }
}
