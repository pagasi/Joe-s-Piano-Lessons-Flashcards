//
//  Scales3ViewController.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 2/16/21.
//

import UIKit

class Scales3ViewController: UIViewController {

    //    set scale data to Minor Scales one octave
    let VCInstanceOfScaleData = ScaleData3()
    var theArrayForVC3: [ScaleModel] = []
    var inLandscape:Bool = UIDevice.current.orientation.isLandscape
    var yAxisvariable:CGFloat = 0
    
    //MARK: create buttons
    lazy var cButton: ScrollButton = {
        let button:ScrollButton = ScrollButton(title: "C")
        button.addTarget(self, action: #selector(cButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var gButton: ScrollButton = {
        let button:ScrollButton = ScrollButton(title: "G")
        button.addTarget(self, action: #selector(gButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var dButton:ScrollButton = {
        let button:ScrollButton = ScrollButton(title: "D")
        button.addTarget(self, action: #selector(dButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var aButton:ScrollButton = {
        let button:ScrollButton = ScrollButton(title: "A")
        button.addTarget(self, action: #selector(aButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var eButton:ScrollButton = {
        let button:ScrollButton = ScrollButton(title: "E")
        button.addTarget(self, action: #selector(eButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var bButton:ScrollButton = {
        let button:ScrollButton = ScrollButton(title: "B")
        button.addTarget(self, action: #selector(bButtonPressed), for: .touchUpInside)
        return button
    }()
    
//    lazy var cFlatButton:ScrollButton = {
//        let button:ScrollButton = ScrollButton(title: "C\(Constants.FLAT_UNICODE)")
//        button.addTarget(self, action: #selector(cFlatButtonPressed), for: .touchUpInside)
//        return button
//    }()
    
    lazy var fSharpButton:ScrollButton = {
        let button:ScrollButton = ScrollButton(title: "F\(Constants.SHARP_UNICODE)")
        button.addTarget(self, action: #selector(fSharpButtonPressed), for: .touchUpInside)
        return button
    }()
    
//    lazy var gFlatButton:ScrollButton = {
//        let button:ScrollButton = ScrollButton(title: "G\(Constants.FLAT_UNICODE)")
//        button.addTarget(self, action: #selector(gFlatButtonPressed), for: .touchUpInside)
//        return button
//    }()
    
    lazy var cSharpButton:ScrollButton = {
        let button:ScrollButton = ScrollButton(title: "C\(Constants.SHARP_UNICODE)")
        button.addTarget(self, action: #selector(cSharpButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var gSharpButton:ScrollButton = {
        let button:ScrollButton = ScrollButton(title: "G\(Constants.SHARP_UNICODE)")
        button.addTarget(self, action: #selector(gSharpButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var aFlatButton:ScrollButton = {
        let button:ScrollButton = ScrollButton(title: "A\(Constants.FLAT_UNICODE)")
        button.addTarget(self, action: #selector(aFlatButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var dSharpButton:ScrollButton = {
        let button:ScrollButton = ScrollButton(title: "D\(Constants.SHARP_UNICODE)")
        button.addTarget(self, action: #selector(dSharpButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var eFlatButton:ScrollButton = {
        let button:ScrollButton = ScrollButton(title: "E\(Constants.FLAT_UNICODE)")
        button.addTarget(self, action: #selector(eFlatButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var aSharpButton:ScrollButton = {
        let button:ScrollButton = ScrollButton(title: "A\(Constants.SHARP_UNICODE)")
        button.addTarget(self, action: #selector(aSharpButtonPressed), for: .touchUpInside)
        return button
    }()

    lazy var bFlatButton:ScrollButton = {
        let button:ScrollButton = ScrollButton(title: "B\(Constants.FLAT_UNICODE)")
        button.addTarget(self, action: #selector(bFlatButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var fButton:ScrollButton = {
        let button:ScrollButton = ScrollButton(title: "F")
        button.addTarget(self, action: #selector(fButtonPressed), for: .touchUpInside)
        return button
    }()
    
    //MARK:    create table
    let scaleTableView: UITableView = {
        let table = UITableView()
        table.register(ScalesTableViewCell.self, forCellReuseIdentifier: Constants.SCALES_CELL_IDENTIFIER3)
        table.rowHeight = 144
        table.allowsSelection = false
        return table
    }()
    //MARK: lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        set delegate and dataSource for tableview as self
        scaleTableView.delegate = self
        scaleTableView.dataSource = self
        
        //add buttons
        shortcutStackSetup()
        
        //        add the tableview to the main view and set constraints
        view.addSubview(scaleTableView)
        scaleTableView.translatesAutoresizingMaskIntoConstraints = false
        scaleTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scaleTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scaleTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//        scaleTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scaleTableView.trailingAnchor.constraint(equalTo: cButton.leadingAnchor).isActive = true
        
        scaleTableView.backgroundColor = .white
        
        theArrayForVC3 = VCInstanceOfScaleData.createArray()
    }
}

//MARK: tableview extension

extension Scales3ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theArrayForVC3.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.SCALES_CELL_IDENTIFIER3, for: indexPath) as! ScalesTableViewCell
        
        //        setup the cell
        cell.backgroundColor = .white
        
        //        run the stack setup inside the cell using scalesTableViewCell.swift methods
        cell.fullStackSetup(tableIndex: indexPath.row, cellScaleDataChoice: 2, inLandscape: UIDevice.current.orientation.isLandscape)
        if inLandscape != UIDevice.current.orientation.isLandscape {
            tableView.reloadData()
            inLandscape = UIDevice.current.orientation.isLandscape
        }

        return cell
    }
}

//MARK: Scroll button extension
extension Scales3ViewController {
    
    
    
    //MARK: scroll button objc funcs
    @objc func cButtonPressed() {
        scaleTableView.scrollToRow(at: IndexPath(row: 0, section: 0), at: .top, animated: true)
    }
    
    @objc func gButtonPressed() {
        scaleTableView.scrollToRow(at: IndexPath(row: 3, section: 0), at: .top, animated: true)
    }
    
    @objc func dButtonPressed() {
        scaleTableView.scrollToRow(at: IndexPath(row: 6, section: 0), at: .top, animated: true)
    }
    
    @objc func aButtonPressed() {
        scaleTableView.scrollToRow(at: IndexPath(row: 9, section: 0), at: .top, animated: true)
    }
    
    @objc func eButtonPressed() {
        scaleTableView.scrollToRow(at: IndexPath(row: 12, section: 0), at: .top, animated: true)
    }
    
    @objc func bButtonPressed() {
        scaleTableView.scrollToRow(at: IndexPath(row: 15, section: 0), at: .top, animated: true)
    }
    
    @objc func fSharpButtonPressed() {
        scaleTableView.scrollToRow(at: IndexPath(row: 18, section: 0), at: .top, animated: true)
    }
    
    @objc func cSharpButtonPressed() {
        scaleTableView.scrollToRow(at: IndexPath(row: 21, section: 0), at: .top, animated: true)
    }
    
    @objc func gSharpButtonPressed() {
        scaleTableView.scrollToRow(at: IndexPath(row: 24, section: 0), at: .top, animated: true)
    }
    
    @objc func aFlatButtonPressed() {
        scaleTableView.scrollToRow(at: IndexPath(row: 27, section: 0), at: .top, animated: true)
    }
    
    @objc func dSharpButtonPressed() {
        scaleTableView.scrollToRow(at: IndexPath(row: 30, section: 0), at: .top, animated: true)
    }
    
    @objc func eFlatButtonPressed() {
        scaleTableView.scrollToRow(at: IndexPath(row: 33, section: 0), at: .top, animated: true)
    }
    
    @objc func aSharpButtonPressed() {
        scaleTableView.scrollToRow(at: IndexPath(row: 36, section: 0), at: .top, animated: true)
    }
    
    @objc func bFlatButtonPressed() {
        scaleTableView.scrollToRow(at: IndexPath(row: 39, section: 0), at: .top, animated: true)
    }
    
    @objc func fButtonPressed() {
        scaleTableView.scrollToRow(at: IndexPath(row: 42, section: 0), at: .top, animated: true)
    }
    
    //MARK: scroll stack setup
    func shortcutStackSetup() {
        let stack = UIStackView(arrangedSubviews: [cButton, gButton, dButton, aButton, eButton, bButton, fSharpButton, cSharpButton, gSharpButton, aFlatButton, dSharpButton, eFlatButton, aSharpButton, bFlatButton, fButton])
        
        //stack features
        stack.axis = .vertical
        stack.backgroundColor = .white
        
        let spacingAndYAxisVariableArray = stack.adjustForPhone()
        
        stack.spacing = spacingAndYAxisVariableArray[0]
        yAxisvariable = spacingAndYAxisVariableArray[1]
//        stack.distribution = .fillProportionally
        
        view.addSubview(stack)
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        stack.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: yAxisvariable).isActive = true
    }
}
