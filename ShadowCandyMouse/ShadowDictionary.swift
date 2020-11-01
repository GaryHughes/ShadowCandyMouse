//
//  Dictionary.swift
//  ShadowCandyMouse
//
//  Created by Gary Hughes on 26/8/20.
//  Copyright © 2020 Gary Hughes. All rights reserved.
//
import Foundation

class ShadowDictionary
{
    let english: [String : String] = [
        "A" : "CANDY",
        "B" : "BOAT",
        "C" : "SHADOW",
        "D" : "SOCK",
        "E" : "BANANA",
        "F" : "KNIFE",
        "G" : "NUT WATER",
        "H" : "MOUNTAIN",
        "I" : "PEOPLE",
        "J" : "TEAR",
        "K" : "WIZARD",
        "L" : "NOSE",
        "M" : "GATES",
        "N" : "GATE",
        "O" : "FLOWER",
        "P" : "TAP",
        "Q" : "WIG",
        "R" : "FIZZY DRINK",
        "S" : "PERSON",
        "T" : "MOUSE",
        "U" : "BOTTLE AND NUT",
        "V" : "ICECREAM CONE",
        "W" : "TEETH",
        "X" : "BOX",
        "Y" : "MOUTH AND TONGUE",
        "Z" : "TRIANGLES"
    ]
    
    let shadow: [String : String]
    
    public init()
    {
        shadow = Dictionary(uniqueKeysWithValues: english.map { (key, value) in (value, key) })
    }
    
    public func englishToShadow(_ character: String) -> String? {
        return english[character.uppercased()]
    }
    
    public func shadowToEnglish(_ words: String) -> String? {
        return shadow[words.uppercased()]
    }
    
}
