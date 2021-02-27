//
//  ScalesTableViewCell.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 2/12/21.
//

import UIKit

class ScalesTableViewCell: UITableViewCell {
    var setupcomplete: Bool = false
    let cellScaleData = ScaleData()
    let cellScaleData2 = ScaleData2()
    let cellScaleData3 = ScaleData3()
    let cellScaleData4 = ScaleData4()
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
    
    func fullStackSetup(tableIndex:Int, cellScaleDataChoice: Int, inLandscape: Bool) {
        if setupcomplete == true {
            for _ in 0...5 {
                mainStack.subviews[0].removeFromSuperview()
            }
        }
        mainStack.removeFromSuperview()
        setupVerticalStackView()
        setupHorizontalStacks(tableIndex: tableIndex, cellScaleDataChoice: cellScaleDataChoice, inLandscape: inLandscape)
    }
    
    func setupVerticalStackView() {
        contentView.addSubview(mainStack)
        
        //constraints
        mainStack.topAnchor.constraint(equalTo:  contentView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        mainStack.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        mainStack.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        mainStack.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
    }
    
    func setupHorizontalStacks(tableIndex: Int, cellScaleDataChoice: Int, inLandscape: Bool) {
        
        let scaleArray = setupScaleArray(cellScaleDataChoice: cellScaleDataChoice)
        
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
                print ("spacer")
            }
        }
    }
    func setupScaleArray(cellScaleDataChoice: Int) -> [ScaleModel] {
        
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
            print("default scale Array")
            return cellScaleData.createArray()
            
        }
    }
    
    
    func createScaleName(scale: ScaleModel, Hstack: UIStackView) {
        let label = UILabel()
        label.text = scale.scaleName
        label.textColor = .black
        label.font = UIFont(name: "Helvetica", size: 25)
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        //                horizontalStackView.distribution = .fill
        Hstack.alignment = .center
        Hstack.addArrangedSubview(label)
    }
    
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
        setupcomplete = true
    }
}
