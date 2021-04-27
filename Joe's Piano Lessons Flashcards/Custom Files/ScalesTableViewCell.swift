//
//  ScalesTableViewCell.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 2/12/21.
//

import UIKit

// the ScalesTableViewCell provides a custom UITableViewCell for the ScalesViewControllers to display all the data provided by the ScaleData.swift file
class ScalesTableViewCell: UITableViewCell {
    
//
    var setupComplete: Bool = false
    
//    create instances of each of the 4 sets of scales from the ScaleData.swift file
    let cellScaleData = ScaleData()
    let cellScaleData2 = ScaleData2()
    let cellScaleData3 = ScaleData3()
    let cellScaleData4 = ScaleData4()
    
//    create the vertical stack to contain the parts of the scale model
    var mainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 1
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.autoresizesSubviews = true
        
        return stack
    }()
    
    // func to clean and then populate a cell in the ScalesViewController's tableviews
    func fullStackSetup(tableIndex:Int, cellScaleDataChoice: Int, inLandscape: Bool) {
        if setupComplete == true {
//            clean the subviews of the mainstack then remove the mainstack to prepare for the next cell in the deque
            for _ in 0...5 {
                mainStack.subviews[0].removeFromSuperview()
            }
        }
        mainStack.removeFromSuperview()
        
//        apply the new scale to the cell
        setupVerticalStackView()
        setupHorizontalStacks(tableIndex: tableIndex, cellScaleDataChoice: cellScaleDataChoice, inLandscape: inLandscape)
    }
    
    func setupVerticalStackView() {
//        add the vertical stack view to the cell
        contentView.addSubview(mainStack)
        
        //constraints for the  mainstack
        mainStack.topAnchor.constraint(equalTo:  contentView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        mainStack.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        mainStack.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        mainStack.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
    }
    
    func setupHorizontalStacks(tableIndex: Int, cellScaleDataChoice: Int, inLandscape: Bool) {
        
        let scaleArray = setupScaleArray(cellScaleDataChoice: cellScaleDataChoice)
//        create a horizontal stack in each of the 6 layers of the scale cell
        for index1 in 0...5 {
            let horizontalStackView = UIStackView()
            mainStack.addArrangedSubview(horizontalStackView)
            horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
            horizontalStackView.axis = .horizontal
            horizontalStackView.spacing = 1
            horizontalStackView.alignment = .center
            horizontalStackView.distribution = .fillEqually
            horizontalStackView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
            horizontalStackView.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
            
//           populate the horizontal stacks with the appropriate parts of the scale using the scale set chosen by the user
            switch index1 {
            case 1 :
                createScaleName(scale: scaleArray[tableIndex], Hstack: horizontalStackView)
            case 2 :
                createRHLabels(scale: scaleArray[tableIndex], Hstack: horizontalStackView, inLandscape: inLandscape)
            case 3 :
                createLetterLabels(scale: scaleArray[tableIndex], Hstack: horizontalStackView, inLandscape: inLandscape)
            case 4 :
                createLHLabels(scale: scaleArray[tableIndex], Hstack: horizontalStackView, inLandscape: inLandscape)
            default:
                break
            }
        }
    }
    func setupScaleArray(cellScaleDataChoice: Int) -> [ScaleModel] {
        //create the array of scales chosen by the user
        switch cellScaleDataChoice {
        case 0:
            return cellScaleData.createArray()
        case 1:
            return cellScaleData2.createArray()
        case 2:
            return cellScaleData3.createArray()
        case 3:
            return cellScaleData4.createArray()
        default:
//            default scale Array
            return cellScaleData.createArray()
            
        }
    }
    
//    MARK: funcs to display scale data
//    setup the scale name
    func createScaleName(scale: ScaleModel, Hstack: UIStackView) {
        let label = UILabel()
        label.text = scale.scaleName
        label.textColor = .black
        label.font = UIFont(name: "Helvetica", size: 25)
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        Hstack.alignment = .center
        Hstack.addArrangedSubview(label)
    }
//    setup the RH labels
    func createRHLabels(scale: ScaleModel, Hstack: UIStackView, inLandscape: Bool) {
        for index2 in 0...scale.scaleFingeringRH.count - 1 {
            let label = UILabel()
            label.textAlignment = .center
            label.font = UIFont(name: "Helvetica", size: 12)
            if inLandscape == true {
                label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            }
            else {
                label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
            }
            label.text = "\(scale.scaleFingeringRH[index2])"
            label.textColor = .black
            Hstack.addArrangedSubview(label)
        }
    }
//    setup the Letter labels
    func createLetterLabels(scale: ScaleModel, Hstack: UIStackView, inLandscape: Bool) {
        for index2 in 0...scale.scaleLetters.count - 1 {
            let label = UILabel()
            label.textAlignment = .center
            label.font = UIFont(name: "Helvetica", size: 12)
            if inLandscape == true {
                label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            }
            else {
                label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
            }
            label.text = "\(scale.scaleLetters[index2])"
            label.textColor = .black
            Hstack.addArrangedSubview(label)
        }
    }
//    setup the LH labels
    func createLHLabels(scale: ScaleModel, Hstack: UIStackView, inLandscape: Bool) {
        for index2 in 0...scale.scaleFingeringLH.count - 1 {
            let label = UILabel()
            label.textAlignment = .center
            label.font = UIFont(name: "Helvetica", size: 12)
            if inLandscape == true {
                label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            }
            else {
                label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
            }
            label.text = "\(scale.scaleFingeringLH[index2])"
            label.textColor = .black
            Hstack.addArrangedSubview(label)
        }
//        mark this cell as completely setup.. so that it can be dissasembled when a new cell is needed.
        setupComplete = true
    }
}
