//
//  Villain.swift
//  BondVillains
//
//  Created by Jason on 11/19/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Villain

struct Villain {
    
    // MARK: Properties
    
    let name: String
    let evilScheme: String
    let imageName: String
    
    static let NameKey = "NameKey"
    static let EvilSchemeKey = "EvilScheme"
    static let ImageNameKey = "ImageNameKey"
    
    // MARK: Initializer
    
    // Generate a Villain from a three entry dictionary

    init(dictionary: [String : String]) {
    
        self.name = dictionary[Villain.NameKey]!
        self.evilScheme = dictionary[Villain.EvilSchemeKey]!
        self.imageName = dictionary[Villain.ImageNameKey]!
    }
}

// MARK: - Villain (All Villians)

/**
* This extension adds static variable allVillains. An array of Villain objects
*/

extension Villain {

    // Generate an array full of all of the villains in
    static var allVillains: [Villain] {
        
        var villainArray = [Villain]()
        
        for d in Villain.localVillainData() {
            villainArray.append(Villain(dictionary: d))
        }
        
        return villainArray
    }
    
    static func localVillainData() -> [[String : String]] {
        return [
            [Villain.NameKey : "Mr. Jazz", Villain.EvilSchemeKey : "Smuggle B12.",  Villain.ImageNameKey : "Big"],
            [Villain.NameKey : "Ernest Blofeld", Villain.EvilSchemeKey : "Whatever",  Villain.ImageNameKey : "Blofeld"],
            [Villain.NameKey : "Sir Hugo Drax", Villain.EvilSchemeKey : "Nerve",  Villain.ImageNameKey : "Drax"],
            [Villain.NameKey : "Jaws", Villain.EvilSchemeKey : "Joke",  Villain.ImageNameKey : "Jaws"],
            [Villain.NameKey : "Rosa Klebb", Villain.EvilSchemeKey : "Humiliate MI6",  Villain.ImageNameKey : "Klebb"],
            [Villain.NameKey : "Emilio Largo", Villain.EvilSchemeKey : "Steal", Villain.ImageNameKey : "EmilioLargo"],
            [Villain.NameKey : "Le Chiffre", Villain.EvilSchemeKey : "Beat at poker.",  Villain.ImageNameKey : "Lechiffre"],
            [Villain.NameKey : "Odd Job", Villain.EvilSchemeKey : "Kill",  Villain.ImageNameKey : "OddJob"],
            [Villain.NameKey : "Francisco Scaramanga", Villain.EvilSchemeKey : "...",  Villain.ImageNameKey : "Scaramanga"],
            [Villain.NameKey : "Raoul Silva", Villain.EvilSchemeKey : "Kill M.",  Villain.ImageNameKey : "Silva"],
            [Villain.NameKey : "Alec Trevelyan", Villain.EvilSchemeKey : "nukeProof",  Villain.ImageNameKey : "Trevelyan"],
            [Villain.NameKey : "Auric Goldfinger", Villain.EvilSchemeKey : "NKF",  Villain.ImageNameKey : "Goldfinger"],
            [Villain.NameKey : "Max Zorin", Villain.EvilSchemeKey : "8343",  Villain.ImageNameKey : "Zorin"]
        ]
    }
}
