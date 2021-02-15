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
    
    func fullStackSetup(tableIndex:Int) {
        if setupcomplete == true {
            for _ in 0...5 {
                mainStack.subviews[0].removeFromSuperview()
            }
        }
        mainStack.removeFromSuperview()
        setupVerticalStackView()
        setupHorizontalStacks(tableIndex: tableIndex)
    }
    
    func setupVerticalStackView() {
        contentView.addSubview(mainStack)
        
        //constraints
        mainStack.topAnchor.constraint(equalTo:  contentView.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        mainStack.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        mainStack.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        mainStack.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
    }
    
    func setupHorizontalStacks(tableIndex: Int) {
        let scaleArray: [ScaleModel] = cellScaleData.createArray()
        
        
        
        for index1 in 0...5 {
            let horizontalStackView = UIStackView()
            mainStack.addArrangedSubview(horizontalStackView)
            horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
            horizontalStackView.axis = .horizontal
            horizontalStackView.spacing = 1
            horizontalStackView.alignment = .center
            horizontalStackView.distribution = .fillEqually
            horizontalStackView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
            horizontalStackView.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
            
            switch index1 {
            case 1 :
                createScaleName(scale: scaleArray[tableIndex], Hstack: horizontalStackView)
            case 2 :
                createRHLabels(scale: scaleArray[tableIndex], Hstack: horizontalStackView)
            case 3 :
                createLetterLabels(scale: scaleArray[tableIndex], Hstack: horizontalStackView)
            case 4 :
                createLHLabels(scale: scaleArray[tableIndex], Hstack: horizontalStackView)
            default:
                print ("spacer")
            }
        }
    }
    
    func createScaleName(scale: ScaleModel, Hstack: UIStackView) {
        let label = UILabel()
        label.text = scale.scaleName
        label.textColor = .black
        label.textAlignment = .center
        //                horizontalStackView.distribution = .fill
        Hstack.alignment = .center
        Hstack.addArrangedSubview(label)
    }
    
    func createRHLabels(scale: ScaleModel, Hstack: UIStackView) {
        for index2 in 0...scale.scaleFingeringRH.count - 1 {
            let label = UILabel()
            label.text = "\(scale.scaleFingeringRH[index2])"
            label.textColor = .black
            Hstack.addArrangedSubview(label)
        }
    }
    
    func createLetterLabels(scale: ScaleModel, Hstack: UIStackView) {
        for index2 in 0...scale.scaleLetters.count - 1 {
            let label = UILabel()
            label.text = "\(scale.scaleLetters[index2])"
            label.textColor = .black
            Hstack.addArrangedSubview(label)
        }
    }
    
    func createLHLabels(scale: ScaleModel, Hstack: UIStackView) {
        for index2 in 0...scale.scaleFingeringLH.count - 1 {
            let label = UILabel()
            label.text = "\(scale.scaleFingeringLH[index2])"
            label.textColor = .black
            Hstack.addArrangedSubview(label)
        }
        setupcomplete = true
    }
}
