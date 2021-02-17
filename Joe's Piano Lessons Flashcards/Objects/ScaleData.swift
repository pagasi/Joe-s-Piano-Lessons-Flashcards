//
//  ScaleData.swift
//  Joe's Piano Lessons Flashcards
//
//  Created by Whitney Naquin on 2/15/21.
//

import Foundation

class ScaleData {
    let cMajorScale: ScaleModel = ScaleModel(scaleName: "C Major", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["C","D","E","F","G","A","B","C"])
    
    let gMajorScale: ScaleModel = ScaleModel(scaleName: "G Major", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["G","A","B","C","D","E","F#","G"])
    
    let dMajorScale: ScaleModel = ScaleModel(scaleName: "D Major", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["D","E","F#","G","A","B","C#","D"])
    
    let aMajorScale: ScaleModel = ScaleModel(scaleName: "A Major", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["A","B","C#","D","E","F#","G#","A"])
    
    let eMajorScale: ScaleModel = ScaleModel(scaleName: "E Major", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["E","F#","G#","A","B","C#","D#","E"])
    
    let bMajorScale: ScaleModel = ScaleModel(scaleName: "B Major", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [4,3,2,1,4,3,2,1], scaleLetters: ["B","C#","D#","E","F#","G#","A#","B"])
    
    let cbMajorScale: ScaleModel = ScaleModel(scaleName: "Cb Major", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [4,3,2,1,4,3,2,1], scaleLetters: ["Cb","Db","Eb","Fb","Gb","Ab","Bb","Cb"])
    
    let fSharpMajorScale: ScaleModel = ScaleModel(scaleName: "F# Major", scaleFingeringRH: [2,3,4,1,2,3,1,2], scaleFingeringLH: [4,3,2,1,3,2,1,4], scaleLetters: ["F#","G#","A#","B","C#","D#","E#","F#"])
    
    let gbMajorScale: ScaleModel = ScaleModel(scaleName: "Gb Major", scaleFingeringRH: [2,3,4,1,2,3,1,2], scaleFingeringLH: [4,3,2,1,3,2,1,4], scaleLetters: ["Gb","Ab","Bb","Cb","Db","Eb","F","Gb"])
    
    let cSharpMajorScale: ScaleModel = ScaleModel(scaleName: "C# Major", scaleFingeringRH: [2,3,1,2,3,4,1,2], scaleFingeringLH: [3,2,1,4,3,2,1,3], scaleLetters: ["C#","D#","E#","F#","G#","A#","B#","C#"])
    
    let dbMajorScale: ScaleModel = ScaleModel(scaleName: "Db Major", scaleFingeringRH: [2,3,1,2,3,4,1,2], scaleFingeringLH: [3,2,1,4,3,2,1,3], scaleLetters: ["Db","Eb","F","Gb","Ab","Bb","C","Db"])
    
    let abMajorScale: ScaleModel = ScaleModel(scaleName: "Ab Major", scaleFingeringRH: [3,4,1,2,3,1,2,3], scaleFingeringLH: [3,2,1,4,3,2,1,3], scaleLetters: ["Ab","Bb","C","Db","Eb","F","G","Ab"])
    
    let ebMajorScale: ScaleModel = ScaleModel(scaleName: "Eb Major", scaleFingeringRH: [3,1,2,3,4,1,2,3], scaleFingeringLH: [3,2,1,4,3,2,1,3], scaleLetters: ["Eb","F","G","Ab","Bb","C","D","Eb"])
    
    let bbMajorScale: ScaleModel = ScaleModel(scaleName: "Bb Major", scaleFingeringRH: [3,1,2,4,3,2,1,3], scaleFingeringLH: [4,1,2,3,1,2,3,4], scaleLetters: ["Bb","C","D","Eb","F","G","A","Bb"])
    
    let fMajorScale: ScaleModel = ScaleModel(scaleName: "F Major", scaleFingeringRH: [1,2,3,4,1,2,3,4], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["F","G","A","Bb","C","D","E","F"])
    
    func createArray() -> [ScaleModel] {
        
        let theArray: [ScaleModel] = [cMajorScale, gMajorScale, dMajorScale, aMajorScale, eMajorScale, bMajorScale, cbMajorScale, fSharpMajorScale, gbMajorScale, cSharpMajorScale, dbMajorScale, abMajorScale, ebMajorScale, bbMajorScale, fMajorScale]
        
  return theArray
    }
}

class ScaleData2 {
    let cMajorScale: ScaleModel = ScaleModel(scaleName: "C Major", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["C","D","E","F","G","A","B","C","D","E","F","G","A","B","C"])

    func createArray() -> [ScaleModel] {
        
        let theArray: [ScaleModel] = [cMajorScale]
        /*, gMajorScale, dMajorScale, aMajorScale, eMajorScale, bMajorScale, cbMajorScale, fSharpMajorScale, gbMajorScale, cSharpMajorScale, dbMajorScale, abMajorScale, ebMajorScale, bbMajorScale, fMajorScale]*/
        
  return theArray
    }
}

class ScaleData3 {
    let cMinorScale: ScaleModel = ScaleModel(scaleName: "C Minor Harmonic", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["C","D","Eb","F","G","Ab","BN","C"])

    func createArray() -> [ScaleModel] {
        
        let theArray: [ScaleModel] = [cMinorScale]
        /*, gMajorScale, dMajorScale, aMajorScale, eMajorScale, bMajorScale, cbMajorScale, fSharpMajorScale, gbMajorScale, cSharpMajorScale, dbMajorScale, abMajorScale, ebMajorScale, bbMajorScale, fMajorScale]*/
        
  return theArray
    }
}

class ScaleData4 {
    let cMinorScale: ScaleModel = ScaleModel(scaleName: "C Minor Harmonic", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["C","D","Eb","F","G","Ab","BN","C","D","Eb","F","G","Ab","BN","C"])

    func createArray() -> [ScaleModel] {
        
        let theArray: [ScaleModel] = [cMinorScale]
        /*, gMajorScale, dMajorScale, aMajorScale, eMajorScale, bMajorScale, cbMajorScale, fSharpMajorScale, gbMajorScale, cSharpMajorScale, dbMajorScale, abMajorScale, ebMajorScale, bbMajorScale, fMajorScale]*/
        
  return theArray
    }
}
