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

    let gMajorScale: ScaleModel = ScaleModel(scaleName: "G Major", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["G","A","B","C","D","E","F#","G","A","B","C","D","E","F#","G"])
    
    let dMajorScale: ScaleModel = ScaleModel(scaleName: "D Major", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["D","E","F#","G","A","B","C#","D","E","F#","G","A","B","C#","D"])
    
    let aMajorScale: ScaleModel = ScaleModel(scaleName: "A Major", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["A","B","C#","D","E","F#","G#","A","B","C#","D","E","F#","G#","A"])
    
    let eMajorScale: ScaleModel = ScaleModel(scaleName: "E Major", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["E","F#","G#","A","B","C#","D#","E","F#","G#","A","B","C#","D#","E"])
    
    let bMajorScale: ScaleModel = ScaleModel(scaleName: "B Major", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [4,3,2,1,4,3,2,1,3,2,1,4,3,2,1], scaleLetters: ["B","C#","D#","E","F#","G#","A#","B","C#","D#","E","F#","G#","A#","B"])
    
    let cbMajorScale: ScaleModel = ScaleModel(scaleName: "Cb Major", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [4,3,2,1,4,3,2,1,3,2,1,4,3,2,1], scaleLetters: ["Cb","Db","Eb","Fb","Gb","Ab","Bb","Cb","Db","Eb","Fb","Gb","Ab","Bb","Cb"])
    
    let fSharpMajorScale: ScaleModel = ScaleModel(scaleName: "F# Major", scaleFingeringRH: [2,3,4,1,2,3,1,2,3,4,1,2,3,1,2], scaleFingeringLH: [4,3,2,1,3,2,1,4,3,2,1,3,2,1,4], scaleLetters: ["F#","G#","A#","B","C#","D#","E#","F#","G#","A#","B","C#","D#","E#","F#"])
    
    let gbMajorScale: ScaleModel = ScaleModel(scaleName: "Gb Major", scaleFingeringRH: [2,3,4,1,2,3,1,2,3,4,1,2,3,1,2], scaleFingeringLH: [4,3,2,1,3,2,1,4,3,2,1,3,2,1,4], scaleLetters: ["Gb","Ab","Bb","Cb","Db","Eb","F","Gb","Ab","Bb","Cb","Db","Eb","F","Gb"])
    
    let cSharpMajorScale: ScaleModel = ScaleModel(scaleName: "C# Major", scaleFingeringRH: [2,3,1,2,3,4,1,2,3,1,2,3,4,1,2], scaleFingeringLH: [3,2,1,4,3,2,1,3,2,1,4,3,2,1,3], scaleLetters: ["C#","D#","E#","F#","G#","A#","B#","C#","D#","E#","F#","G#","A#","B#","C#"])
    
    let dbMajorScale: ScaleModel = ScaleModel(scaleName: "Db Major", scaleFingeringRH: [2,3,1,2,3,4,1,2,3,1,2,3,4,1,2], scaleFingeringLH: [3,2,1,4,3,2,1,3,2,1,4,3,2,1,3], scaleLetters: ["Db","Eb","F","Gb","Ab","Bb","C","Db","Eb","F","Gb","Ab","Bb","C","Db"])
    
    let abMajorScale: ScaleModel = ScaleModel(scaleName: "Ab Major", scaleFingeringRH: [3,4,1,2,3,1,2,3,4,1,2,3,1,2,3], scaleFingeringLH: [3,2,1,4,3,2,1,3,2,1,4,3,2,1,3], scaleLetters: ["Ab","Bb","C","Db","Eb","F","G","Ab","Bb","C","Db","Eb","F","G","Ab"])
    
    let ebMajorScale: ScaleModel = ScaleModel(scaleName: "Eb Major", scaleFingeringRH: [3,1,2,3,4,1,2,3,1,2,3,4,1,2,3], scaleFingeringLH: [3,2,1,4,3,2,1,3,2,1,4,3,2,1,3], scaleLetters: ["Eb","F","G","Ab","Bb","C","D","Eb","F","G","Ab","Bb","C","D","Eb"])
    
    let bbMajorScale: ScaleModel = ScaleModel(scaleName: "Bb Major", scaleFingeringRH: [3,1,2,4,3,2,1,3,1,2,4,3,2,1,3], scaleFingeringLH: [4,1,2,3,1,2,3,4,1,2,3,1,2,3,4], scaleLetters: ["Bb","C","D","Eb","F","G","A","Bb","C","D","Eb","F","G","A","Bb"])
    
    let fMajorScale: ScaleModel = ScaleModel(scaleName: "F Major", scaleFingeringRH: [1,2,3,4,1,2,3,1,2,3,4,1,2,3,4], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["F","G","A","Bb","C","D","E","F","G","A","Bb","C","D","E","F"])
    
    func createArray() -> [ScaleModel] {
        
        let theArray: [ScaleModel] = [cMajorScale, gMajorScale, dMajorScale, aMajorScale, eMajorScale, bMajorScale, cbMajorScale, fSharpMajorScale, gbMajorScale, cSharpMajorScale, dbMajorScale, abMajorScale, ebMajorScale, bbMajorScale, fMajorScale]
        
  return theArray
    }
}

class ScaleData3 {
    let cMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "c Minor Harmonic", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["C","D","Eb","F","G","Ab","BN","C"])
    
    let cMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "c Minor Melodic Ascending", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["C","D","Eb","F","G","AN","BN","C"])
    
    let cMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "c Minor Melodic Descending", scaleFingeringRH: [5,4,3,2,1,3,2,1], scaleFingeringLH: [1,2,3,1,2,3,4,5], scaleLetters: ["C","Bb","Ab","G","F","Eb","D","C"])
    
    let gMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "g Minor Harmonic", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["G","A","Bb","C","D","Eb","F#","G"])
    
    let gMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "g Minor Melodic Ascending", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["G","A","Bb","C","D","EN","F#","G"])
    
    let gMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "g Minor Melodic Descending", scaleFingeringRH: [5,4,3,2,1,3,2,1], scaleFingeringLH: [1,2,3,1,2,3,4,5], scaleLetters: ["G","FN","Eb","D","C","Bb","A","G"])
    
    let dMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "d Minor Harmonic", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["D","E","F","G","A","Bb","C#","D"])
    
    let dMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "d Minor Melodic Ascending", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["D","E","F","G","A","BN","C#","D"])
    
    let dMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "d Minor Melodic Descending", scaleFingeringRH: [5,4,3,2,1,3,2,1], scaleFingeringLH: [1,2,3,1,2,3,4,5], scaleLetters: ["D","CN","Bb","A","G","F","E","D"])
    
    let aMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "a Minor Harmonic", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["A","B","C","D","E","F","G#","A"])
    
    let aMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "a Minor Melodic Ascending", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["A","B","C","D","E","F#","G#","A"])
    
    let aMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "a Minor Melodic Descending", scaleFingeringRH: [5,4,3,2,1,3,2,1], scaleFingeringLH: [1,2,3,1,2,3,4,5], scaleLetters: ["A","GN","FN","E","D","C","B","A"])
    
    let eMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "e Minor Harmonic", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["E","F#","G","A","B","C","D#","E"])
    
    let eMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "e Minor Melodic Ascending", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["E","F#","G","A","B","C#","D#","E"])
    
    let eMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "e Minor Melodic Descending", scaleFingeringRH: [5,4,3,2,1,3,2,1], scaleFingeringLH: [1,2,3,1,2,3,4,5], scaleLetters: ["E","DN","CN","B","A","G","F#","E"])
    
    let bMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "b Minor Harmonic", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [4,3,2,1,4,3,2,1], scaleLetters: ["B","C#","D","E","F#","G","A#","B"])
    
    let bMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "b Minor Melodic Ascending", scaleFingeringRH: [1,2,3,1,2,3,4,5], scaleFingeringLH: [4,3,2,1,4,3,2,1], scaleLetters: ["B","C#","D","E","F#","G#","A#","B"])
    
    let bMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "b Minor Melodic Descending", scaleFingeringRH: [5,4,3,2,1,3,2,1], scaleFingeringLH: [1,2,3,4,1,2,3,4], scaleLetters: ["B","AN","GN","F#","E","D","C#","B"])
    
    let fSharpMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "f# Minor Harmonic", scaleFingeringRH: [3,4,1,2,3,1,2,3], scaleFingeringLH: [4,3,2,1,3,2,1,4], scaleLetters: ["F#","G#","A","B","C#","D","E#","F#"])
    
    let fSharpMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "f# Minor Melodic Ascending", scaleFingeringRH: [2,3,1,2,3,1,2,3], scaleFingeringLH: [4,3,2,1,3,2,1,4], scaleLetters: ["F#","G#","A","B","C#","D#","E#","F#"])
    
    let fSharpMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "f# Minor Melodic Descending", scaleFingeringRH: [3,2,1,3,2,1,4,3], scaleFingeringLH: [4,1,2,3,1,2,3,4], scaleLetters: ["F#","EN","DN","C#","B","A","G#","F#"])
    
    let cSharpMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "c# Minor Harmonic", scaleFingeringRH: [3,4,1,2,3,1,2,3], scaleFingeringLH: [3,2,1,4,3,2,1,3], scaleLetters: ["C#","D#","E","F#","G#","A","B#","C#"])
    
    let cSharpMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "c# Minor Melodic Ascending", scaleFingeringRH: [2,3,1,2,3,4,1,3], scaleFingeringLH: [3,2,1,4,3,2,1,3], scaleLetters: ["C#","D#","E","F#","G#","A#","B#","C#"])
    
    let cSharpMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "c# Minor Melodic Descending", scaleFingeringRH: [3,2,1,3,2,1,4,3], scaleFingeringLH: [3,1,2,3,4,1,2,3], scaleLetters: ["C#","BN","AN","G#","F#","E","D#","C#"])
    
    let gSharpMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "g# Minor Harmonic", scaleFingeringRH: [3,4,1,2,3,1,2,3], scaleFingeringLH: [3,2,1,4,3,2,1,3], scaleLetters: ["G#","A#","B","C#","D#","E","Fx","G#"])
    
    let gSharpMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "g# Minor Melodic Ascending", scaleFingeringRH: [3,4,1,2,3,1,2,3], scaleFingeringLH: [3,2,1,4,3,2,1,3], scaleLetters: ["G#","A#","B","C#","D#","E#","Fx","G#"])
    
    let gSharpMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "g# Minor Melodic Descending", scaleFingeringRH: [3,2,1,3,2,1,4,3], scaleFingeringLH: [3,4,1,2,3,1,2,3], scaleLetters: ["G#","F#","EN","D#","C#","B","A#","G#"])

    let abMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "ab Minor Harmonic", scaleFingeringRH: [3,4,1,2,3,1,2,3], scaleFingeringLH: [3,2,1,4,3,2,1,3], scaleLetters: ["Ab","Bb","Cb","Db","Eb","Fb","G","Ab"])
    
    let abMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "ab Minor Melodic Ascending", scaleFingeringRH: [3,4,1,2,3,1,2,3], scaleFingeringLH: [3,2,1,4,3,2,1,3], scaleLetters: ["Ab","Bb","Cb","Db","Eb","F","G","Ab"])
    
    let abMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "ab Minor Melodic Descending", scaleFingeringRH: [3,2,1,3,2,1,4,3], scaleFingeringLH: [3,4,1,2,3,1,2,3], scaleLetters: ["Ab","Gb","Fb","Eb","Db","Cb","Bb","Ab"])
  
    let dSharpMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "d# Minor Harmonic", scaleFingeringRH: [3,1,2,3,4,1,2,3], scaleFingeringLH: [2,1,4,3,2,1,3,2], scaleLetters: ["D#","E#","F#","G#","A#","B","Cx","D#"])
    
    let dSharpMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "d# Minor Melodic Ascending", scaleFingeringRH: [3,1,2,3,4,1,2,3], scaleFingeringLH: [2,1,4,3,2,1,3,2], scaleLetters: ["D#","E#","F#","G#","A#","B#","Cx","D#"])
    
    let dSharpMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "d# Minor Melodic Descending", scaleFingeringRH: [3,2,1,4,3,2,1,3], scaleFingeringLH: [2,3,1,2,3,4,1,2], scaleLetters: ["D#","C#","BN","A#","G#","F#","E#","D#"])

    let ebMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "eb Minor Harmonic", scaleFingeringRH: [3,1,2,3,4,1,2,3], scaleFingeringLH: [2,1,4,3,2,1,3,2], scaleLetters: ["Eb","F","Gb","Ab","Bb","Cb","D","Eb"])
    
    let ebMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "eb Minor Melodic Ascending", scaleFingeringRH: [3,1,2,3,4,1,2,3], scaleFingeringLH: [2,1,4,3,2,1,3,2], scaleLetters: ["Eb","F","Gb","Ab","Bb","CN","D","Eb"])
    
    let ebMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "eb Minor Melodic Descending", scaleFingeringRH: [3,2,1,4,3,2,1,3], scaleFingeringLH: [2,3,1,2,3,4,1,2], scaleLetters: ["Eb","Db","Cb","Bb","Ab","Gb","F","Eb"])

    let aSharpMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "a# Minor Harmonic", scaleFingeringRH: [4,1,2,3,1,2,3,4], scaleFingeringLH: [2,1,3,2,1,4,3,2], scaleLetters: ["A#","B#","C#","D#","E#","F#","Gx","A#"])
    
    let aSharpMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "a# Minor Melodic Ascending", scaleFingeringRH: [4,1,2,3,1,2,3,4], scaleFingeringLH: [2,1,3,2,1,4,3,2], scaleLetters: ["A#","B#","C#","D#","E#","Fx","Gx","A#"])
    
    let aSharpMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "a# Minor Melodic Descending", scaleFingeringRH: [4,3,2,1,3,2,1,4], scaleFingeringLH: [2,3,4,1,2,3,1,2], scaleLetters: ["A#","G#","F#","E#","D#","C#","B#","A#"])

    let bbMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "bb Minor Harmonic", scaleFingeringRH: [4,1,2,3,1,2,3,4], scaleFingeringLH: [2,1,3,2,1,4,3,2], scaleLetters: ["Bb","C","Db","Eb","F","Gb","A","Bb"])
    
    let bbMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "bb Minor Melodic Ascending", scaleFingeringRH: [4,1,2,3,1,2,3,4], scaleFingeringLH: [2,1,3,2,1,4,3,2], scaleLetters: ["Bb","C","Db","Eb","F","G","A","Bb"])
    
    let bbMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "bb Minor Melodic Descending", scaleFingeringRH: [4,3,2,1,3,2,1,4], scaleFingeringLH: [2,3,4,1,2,3,1,2], scaleLetters: ["Bb","Ab","Gb","F","Eb","Db","C","Bb"])
  
    let fMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "f Minor Harmonic", scaleFingeringRH: [1,2,3,4,1,2,3,4], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["F","G","Ab","Bb","C","Db","E","F"])
    
    let fMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "f Minor Melodic Ascending", scaleFingeringRH: [1,2,3,4,1,2,3,4], scaleFingeringLH: [5,4,3,2,1,3,2,1], scaleLetters: ["F","G","Ab","Bb","C","D","E","F"])

    let fMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "f Minor Melodic Descending", scaleFingeringRH: [4,3,2,1,4,3,2,1], scaleFingeringLH: [1,2,3,1,2,3,4,5], scaleLetters: ["F","Eb","Db","C","Bb","Ab","G","F"])
    
    func createArray() -> [ScaleModel] {
        
        let theArray: [ScaleModel] = [cMinorScaleHarmonic, cMinorScaleMelodicAscending, cMinorScaleMelodicDescending, gMinorScaleHarmonic, gMinorScaleMelodicAscending, gMinorScaleMelodicDescending, dMinorScaleHarmonic, dMinorScaleMelodicAscending, dMinorScaleMelodicDescending, aMinorScaleHarmonic, aMinorScaleMelodicAscending, aMinorScaleMelodicDescending, eMinorScaleHarmonic, eMinorScaleMelodicAscending, eMinorScaleMelodicDescending, bMinorScaleHarmonic,bMinorScaleMelodicAscending, bMinorScaleMelodicDescending, fSharpMinorScaleHarmonic, fSharpMinorScaleMelodicAscending, fSharpMinorScaleMelodicDescending, cSharpMinorScaleHarmonic, cSharpMinorScaleMelodicAscending, cSharpMinorScaleMelodicDescending, gSharpMinorScaleHarmonic, gSharpMinorScaleMelodicAscending, gSharpMinorScaleMelodicDescending, abMinorScaleHarmonic, abMinorScaleMelodicAscending, abMinorScaleMelodicDescending, dSharpMinorScaleHarmonic, dSharpMinorScaleMelodicAscending, dSharpMinorScaleMelodicDescending, ebMinorScaleHarmonic, ebMinorScaleMelodicAscending, ebMinorScaleMelodicDescending, aSharpMinorScaleHarmonic, aSharpMinorScaleMelodicAscending, aSharpMinorScaleMelodicDescending, bbMinorScaleHarmonic, bbMinorScaleMelodicAscending, bbMinorScaleMelodicDescending, fMinorScaleHarmonic, fMinorScaleMelodicAscending, fMinorScaleMelodicDescending]
        
  return theArray
    }
}

class ScaleData4 {
    let cMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "C Minor Harmonic", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["C","D","Eb","F","G","Ab","BN","C","D","Eb","F","G","Ab","BN","C"])

    let cMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "c Minor Melodic Ascending", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["C","D","Eb","F","G","AN","BN","C","D","Eb","F","G","AN","BN","C"])
    
    let cMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "c Minor Melodic Descending", scaleFingeringRH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleFingeringLH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleLetters: ["C","Bb","Ab","G","F","Eb","D","C","Bb","Ab","G","F","Eb","D","C"])
    
    let gMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "g Minor Harmonic", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["G","A","Bb","C","D","Eb","F#","G","A","Bb","C","D","Eb","F#","G"])
    
    let gMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "g Minor Melodic Ascending", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["G","A","Bb","C","D","EN","F#","G","A","Bb","C","D","EN","F#","G"])
    
    let gMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "g Minor Melodic Descending", scaleFingeringRH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleFingeringLH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleLetters: ["G","FN","Eb","D","C","Bb","A","G","FN","Eb","D","C","Bb","A","G"])
    
    let dMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "d Minor Harmonic", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["D","E","F","G","A","Bb","C#","D","E","F","G","A","Bb","C#","D"])
    
    let dMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "d Minor Melodic Ascending", scaleFingeringRH: [1,2,3, 1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["D","E","F","G","A","BN","C#","D","E","F","G","A","BN","C#","D"])
    
    let dMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "d Minor Melodic Descending", scaleFingeringRH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleFingeringLH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleLetters: ["D","CN","Bb","A","G","F","E","D","CN","Bb","A","G","F","E","D"])
    
    let aMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "a Minor Harmonic", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["A","B","C","D","E","F","G#","A","B","C","D","E","F","G#","A"])
    
    let aMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "a Minor Melodic Ascending", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["A","B","C","D","E","F#","G#","A","B","C","D","E","F#","G#","A"])
    
    let aMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "a Minor Melodic Descending", scaleFingeringRH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleFingeringLH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleLetters: ["A","GN","FN","E","D","C","B","A","GN","FN","E","D","C","B","A"])
    
    let eMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "e Minor Harmonic", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["E","F#","G","A","B","C","D#","E","F#","G","A","B","C","D#","E"])
    
    let eMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "e Minor Melodic Ascending", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["E","F#","G","A","B","C#","D#","E","F#","G","A","B","C#","D#","E"])
    
    let eMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "e Minor Melodic Descending", scaleFingeringRH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleFingeringLH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleLetters: ["E","DN","CN","B","A","G","F#","E","DN","CN","B","A","G","F#","E"])
    
    let bMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "b Minor Harmonic", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [4,3,2,1,4,3,2,1,3,2,1,4,3,2,1], scaleLetters: ["B","C#","D","E","F#","G","A#","B","C#","D","E","F#","G","A#","B"])
    
    let bMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "b Minor Melodic Ascending", scaleFingeringRH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleFingeringLH: [4,3,2,1,4,3,2,1,3,2,1,4,3,2,1], scaleLetters: ["B","C#","D","E","F#","G#","A#","B","C#","D","E","F#","G#","A#","B"])
    
    let bMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "b Minor Melodic Descending", scaleFingeringRH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleFingeringLH: [1,2,3,4,1,2,3,1,2,3,4,1,2,3,4], scaleLetters: ["B","AN","GN","F#","E","D","C#","B","AN","GN","F#","E","D","C#","B"])
    
    let fSharpMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "f# Minor Harmonic", scaleFingeringRH: [3,4,1,2,3,1,2,3,4,1,2,3,1,2,3], scaleFingeringLH: [4,3,2,1,3,2,1,4,3,2,1,3,2,1,4], scaleLetters: ["F#","G#","A","B","C#","D","E#","F#","G#","A","B","C#","D","E#","F#"])
    
    let fSharpMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "f# Minor Melodic Ascending", scaleFingeringRH: [2,3,1,2,3,4,1,2,3,1,2,3,4,1,3], scaleFingeringLH: [4,3,2,1,3,2,1,4,3,2,1,3,2,1,4], scaleLetters: ["F#","G#","A","B","C#","D#","E#","F#","G#","A","B","C#","D#","E#","F#"])
    
    let fSharpMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "f# Minor Melodic Descending", scaleFingeringRH: [3,2,1,3,2,1,4,3,2,1,3,2,1,4,3], scaleFingeringLH: [4,1,2,3,1,2,3,4,1,2,3,1,2,3,4], scaleLetters: ["F#","EN","DN","C#","B","A","G#","F#","EN","DN","C#","B","A","G#","F#"])
    
    let cSharpMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "c# Minor Harmonic", scaleFingeringRH: [3,4,1,2,3,1,2,3,4,1,2,3,1,2,3], scaleFingeringLH: [3,2,1,4,3,2,1,3,2,1,4,3,2,1,3], scaleLetters: ["C#","D#","E","F#","G#","A","B#","C#","D#","E","F#","G#","A","B#","C#"])
    
    let cSharpMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "c# Minor Melodic Ascending", scaleFingeringRH: [2,3,1,2,3,4,1,2,3,1,2,3,4,1,3], scaleFingeringLH: [3,2,1,4,3,2,1,3,2,1,4,3,2,1,3], scaleLetters: ["C#","D#","E","F#","G#","A#","B#","C#","D#","E","F#","G#","A#","B#","C#"])
    
    let cSharpMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "c# Minor Melodic Descending", scaleFingeringRH: [3,2,1,3,2,1,4,3,2,1,3,2,1,4,3], scaleFingeringLH: [3,1,2,3,4,1,2,3,1,2,3,4,1,2,3], scaleLetters: ["C#","BN","AN","G#","F#","E","D#","C#","BN","AN","G#","F#","E","D#","C#"])
    
    let gSharpMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "g# Minor Harmonic", scaleFingeringRH: [3,4,1,2,3,1,2,3,4,1,2,3,1,2,3], scaleFingeringLH: [3,2,1,4,3,2,1,3,2,1,4,3,2,1,3], scaleLetters: ["G#","A#","B","C#","D#","E","Fx","G#","A#","B","C#","D#","E","Fx","G#"])
    
    let gSharpMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "g# Minor Melodic Ascending", scaleFingeringRH: [3,4,1,2,3,1,2,3,4,1,2,3,1,2,3], scaleFingeringLH: [3,2,1,4,3,2,1,3,2,1,4,3,2,1,3], scaleLetters: ["G#","A#","B","C#","D#","E#","Fx","G#","A#","B","C#","D#","E#","Fx","G#"])
    
    let gSharpMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "g# Minor Melodic Descending", scaleFingeringRH: [3,2,1,3,2,1,4,3,2,1,3,2,1,4,3], scaleFingeringLH: [3,4,1,2,3,1,2,3,4,1,2,3,1,2,3], scaleLetters: ["G#","F#","EN","D#","C#","B","A#","G#","F#","EN","D#","C#","B","A#","G#"])

    let abMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "ab Minor Harmonic", scaleFingeringRH: [3,4,1,2,3,1,2,3,4,1,2,3,1,2,3], scaleFingeringLH: [3,2,1,4,3,2,1,3,2,1,4,3,2,1,3], scaleLetters: ["Ab","Bb","Cb","Db","Eb","Fb","G","Ab","Bb","Cb","Db","Eb","Fb","G","Ab"])
    
    let abMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "ab Minor Melodic Ascending", scaleFingeringRH: [3,4,1,2,3,1,2,3,4,1,2,3,1,2,3], scaleFingeringLH: [3,4,1,2,3,1,2,3,4,1,2,3,1,2,3], scaleLetters: ["Ab","Bb","Cb","Db","Eb","F","G","Ab","Bb","Cb","Db","Eb","F","G","Ab"])
    
    let abMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "ab Minor Melodic Descending", scaleFingeringRH: [3,2,1,3,2,1,4,3,2,1,3,2,1,4,3], scaleFingeringLH: [3,4,1,2,3,1,2,3,4,1,2,3,1,2,3], scaleLetters: ["Ab","Gb","Fb","Eb","Db","Cb","Bb","Ab","Gb","Fb","Eb","Db","Cb","Bb","Ab"])
  
    let dSharpMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "d# Minor Harmonic", scaleFingeringRH: [3,1,2,3,4,1,2,3,1,2,3,4,1,2,3], scaleFingeringLH: [2,1,4,3,2,1,3,2,1,4,3,2,1,3,2], scaleLetters: ["D#","E#","F#","G#","A#","B","Cx","D#","E#","F#","G#","A#","B","Cx","D#"])
    
    let dSharpMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "d# Minor Melodic Ascending", scaleFingeringRH: [3,1,2,3,4,1,2,3,1,2,3,4,1,2,3], scaleFingeringLH: [2,1,4,3,2,1,3,2,1,4,3,2,1,3,2], scaleLetters: ["D#","E#","F#","G#","A#","B#","Cx","D#","E#","F#","G#","A#","B#","Cx","D#"])
    
    let dSharpMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "d# Minor Melodic Descending", scaleFingeringRH: [3,2,1,4,3,2,1,3,2,1,4,3,2,1,3], scaleFingeringLH: [2,3,1,2,3,4,1,2,3,1,2,3,4,1,2], scaleLetters: ["D#","C#","BN","A#","G#","F#","E#","D#","C#","BN","A#","G#","F#","E#","D#"])

    let ebMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "eb Minor Harmonic", scaleFingeringRH: [3,1,2,3,4,1,2,3,1,2,3,4,1,2,3], scaleFingeringLH: [2,1,4,3,2,1,3,2,1,4,3,2,1,3,2], scaleLetters: ["Eb","F","Gb","Ab","Bb","Cb","D","Eb","F","Gb","Ab","Bb","Cb","D","Eb"])
    
    let ebMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "eb Minor Melodic Ascending", scaleFingeringRH: [3,1,2,3,4,1,2,3,1,2,3,4,1,2,3], scaleFingeringLH: [3,1,2,3,4,1,2,3,1,2,3,4,1,2,3], scaleLetters: ["Eb","F","Gb","Ab","Bb","CN","D","Eb","F","Gb","Ab","Bb","CN","D","Eb"])
    
    let ebMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "eb Minor Melodic Descending", scaleFingeringRH: [3,2,1,4,3,2,1,3,2,1,4,3,2,1,3], scaleFingeringLH: [2,3,1,2,3,4,1,2,3,1,2,3,4,1,2], scaleLetters: ["Eb","Db","Cb","Bb","Ab","Gb","F","Eb","Db","Cb","Bb","Ab","Gb","F","Eb"])

    let aSharpMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "a# Minor Harmonic", scaleFingeringRH: [4,1,2,3,1,2,3,4,1,2,3,1,2,3,4], scaleFingeringLH: [2,1,3,2,1,4,3,2,1,3,2,1,4,3,2], scaleLetters: ["A#","B#","C#","D#","E#","F#","Gx","A#","B#","C#","D#","E#","F#","Gx","A#"])
    
    let aSharpMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "a# Minor Melodic Ascending", scaleFingeringRH: [4,1,2,3,1,2,3,4,1,2,3,1,2,3,4], scaleFingeringLH: [2,1,3,2,1,4,3,2,1,3,2,1,4,3,2], scaleLetters: ["A#","B#","C#","D#","E#","Fx","Gx","A#","B#","C#","D#","E#","Fx","Gx","A#"])
    
    let aSharpMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "a# Minor Melodic Descending", scaleFingeringRH: [4,3,2,1,3,2,1,4,3,2,1,3,2,1,4], scaleFingeringLH: [2,3,4,1,2,3,1,2,3,4,1,2,3,1,2], scaleLetters: ["A#","G#","F#","E#","D#","C#","B#","A#","G#","F#","E#","D#","C#","B#","A#"])

    let bbMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "bb Minor Harmonic", scaleFingeringRH: [4,1,2,3,1,2,3,4,1,2,3,1,2,3,4], scaleFingeringLH: [2,1,3,2,1,4,3,2,1,3,2,1,4,3,2], scaleLetters: ["Bb","C","Db","Eb","F","Gb","A","Bb","C","Db","Eb","F","Gb","A","Bb"])
    
    let bbMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "bb Minor Melodic Ascending", scaleFingeringRH: [4,1,2,3,1,2,3,4,1,2,3,1,2,3,4], scaleFingeringLH: [2,1,3,2,1,4,3,2,1,3,2,1,4,3,2], scaleLetters: ["Bb","C","Db","Eb","F","G","A","Bb","C","Db","Eb","F","G","A","Bb"])
    
    let bbMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "bb Minor Melodic Descending", scaleFingeringRH: [4,3,2,1,3,2,1,4,3,2,1,3,2,1,4], scaleFingeringLH: [2,3,4,1,2,3,1,2,3,4,1,2,3,1,2], scaleLetters: ["Bb","Ab","Gb","F","Eb","Db","C","Bb","Ab","Gb","F","Eb","Db","C","Bb"])
  
    let fMinorScaleHarmonic: ScaleModel = ScaleModel(scaleName: "f Minor Harmonic", scaleFingeringRH: [1,2,3,4,1,2,3,1,2,3,4,1,2,3,4], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["F","G","Ab","Bb","C","Db","E","F","G","Ab","Bb","C","Db","E","F"])
    
    let fMinorScaleMelodicAscending: ScaleModel = ScaleModel(scaleName: "f Minor Melodic Ascending", scaleFingeringRH: [1,2,3,4,1,2,3,1,2,3,4,1,2,3,4], scaleFingeringLH: [5,4,3,2,1,3,2,1,4,3,2,1,3,2,1], scaleLetters: ["F","G","Ab","Bb","C","D","E","F","G","Ab","Bb","C","D","E","F"])

    let fMinorScaleMelodicDescending: ScaleModel = ScaleModel(scaleName: "f Minor Melodic Descending", scaleFingeringRH: [4,3,2,1,4,3,2,1,3,2,1,4,3,2,1], scaleFingeringLH: [1,2,3,1,2,3,4,1,2,3,1,2,3,4,5], scaleLetters: ["F","Eb","Db","C","Bb","Ab","G","F","Eb","Db","C","Bb","Ab","G","F"])
    
    func createArray() -> [ScaleModel] {
        
        let theArray: [ScaleModel] = [cMinorScaleHarmonic, cMinorScaleMelodicAscending, cMinorScaleMelodicDescending, gMinorScaleHarmonic, gMinorScaleMelodicAscending, gMinorScaleMelodicDescending, dMinorScaleHarmonic, dMinorScaleMelodicAscending, dMinorScaleMelodicDescending, aMinorScaleHarmonic, aMinorScaleMelodicAscending, aMinorScaleMelodicDescending, eMinorScaleHarmonic, eMinorScaleMelodicAscending, eMinorScaleMelodicDescending, bMinorScaleHarmonic,bMinorScaleMelodicAscending, bMinorScaleMelodicDescending, fSharpMinorScaleHarmonic, fSharpMinorScaleMelodicAscending, fSharpMinorScaleMelodicDescending, cSharpMinorScaleHarmonic, cSharpMinorScaleMelodicAscending, cSharpMinorScaleMelodicDescending, gSharpMinorScaleHarmonic, gSharpMinorScaleMelodicAscending, gSharpMinorScaleMelodicDescending, abMinorScaleHarmonic, abMinorScaleMelodicAscending, abMinorScaleMelodicDescending, dSharpMinorScaleHarmonic, dSharpMinorScaleMelodicAscending, dSharpMinorScaleMelodicDescending, ebMinorScaleHarmonic, ebMinorScaleMelodicAscending, ebMinorScaleMelodicDescending, aSharpMinorScaleHarmonic, aSharpMinorScaleMelodicAscending, aSharpMinorScaleMelodicDescending, bbMinorScaleHarmonic, bbMinorScaleMelodicAscending, bbMinorScaleMelodicDescending, fMinorScaleHarmonic, fMinorScaleMelodicAscending, fMinorScaleMelodicDescending]
        
  return theArray
    }
}
