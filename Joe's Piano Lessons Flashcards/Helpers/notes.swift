//
//  notes.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 1/26/21.
//

import Foundation

// MARK: SEGUE WITH CODE
//      let vc = storyboard?.instantiateViewController(withIdentifier: Constants.NICKNAMES_VC_IDENTIFIER) as! NicknamesViewController
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: true, completion: nil)

//or

//override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
//    //pass to segue
//    let newVC = segue.destination as! NicknamesViewController
//    newVC.buttonSelectedAndPassed = buttonSelected
//}
//
//func goToFlashVC() {
//    performSegue(withIdentifier: Constants.DECK_TO_NICKNAMES_VC_SEGUE_IDENTIFIER, sender: self)
//}


// MARK: code to sift out the unwanted flashcards for the flashcardVC
//for switchCheck in ArrayOfLettersSwitchedOff {
//    let letterArrayPosition = ArrayOfLettersSwitchedOff[switchCheck]
//    letterArray.remove(at: letterArrayPosition)
//    }

// MARK: unused buttons for reference
//lazy var fortyFiveSecondButton: SelectionButton = {
//    let button = SelectionButton(title: "45 Sec")
//    button.addTarget(self, action: #selector(fortyFiveSecondButtonPressed), for: .touchUpInside)
//    button.widthAnchor.constraint(equalToConstant: 70).isActive = true
//    return button
//}()
//
//lazy var sixteenSecondButton: SelectionButton = {
//    let button = SelectionButton(title: "16 Sec")
//    button.addTarget(self, action: #selector(sixteenSecondButtonPressed), for: .touchUpInside)
//    button.widthAnchor.constraint(equalToConstant: 70).isActive = true
//    return button
//}()
//
//lazy var beginnerButton: SelectionButton = {
//    let button = SelectionButton(title: "Beginner")
//    button.addTarget(self, action: #selector(beginnerButtonPressed), for: .touchUpInside)
//    return button
//}()
//
//lazy var fullDeckButton: SelectionButton = {
//    let button = SelectionButton(title: "16 Sec")
//    button.addTarget(self, action: #selector(fullDeckButtonPressed), for: .touchUpInside)
//    return button
//}()



//MARK: add programmatic buttons to the stackview
//[fortyFiveSecondButton, sixteenSecondButton, beginnerButton, fullDeckButton].forEach {switchHorizontalStack.addArrangedSubview($0)}



//MARK: landscape vs portriat
//override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
//    if UIDevice.current.orientation.isLandscape == true {
//        mainStackView.axis = .horizontal
//    } else {
//        mainStackView.axis = .vertical
//        mainStackView.layoutSubviews()
//    }
//}
//MARK: timer
//var timer = Timer()
//var count: Int = 0
//@IBOutlet weak var countTimerLabel: UILabel!
//
//func timerFunction() {
//    timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerSelectorFunc), userInfo: nil, repeats: true)
//}
//
//@objc func timerSelectorFunc() {
//    //        add the visable timer
//    count += 1
//    countTimerLabel.text = "\(count)"
//}
//MARK: other timer

//var milliseconds:Int = 10 * 100

/*      timer = Timer.scheduledTimer(timeInterval: 0.001, target: self, selector: #selector(timerFired), userInfo: nil, repeats: true)
      RunLoop.main.add(timer!, forMode: .common) */

/*    @objc func timerFired() {
        
        //        decrement the counter
        milliseconds += 1
        
        //        update the label
        let seconds:Double = Double(milliseconds)/1000.0
        timerLabel.text = String(format: "Time: %.0f", seconds)
        
        //        stop the timer when last card is finished (if finalArrayOfIndexes.count > chosenCountDetailView + 1)
        if finalArrayOfIndexes.count == chosenCountDetailView + 1 {
            
            timerLabel.textColor = UIColor.red
            timer?.invalidate()
            
        }
 
        //
    } */
//MARK: back navagation code
//DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
//    self.navigationController!.popViewController(animated: true)
//}
