//
//  ShadowTranslator.swift
//  ShadowCandyMouse
//
//  Created by Gary Hughes on 26/8/20.
//  Copyright © 2020 Gary Hughes. All rights reserved.
//
import Foundation

class ShadowTranslator
{
    let dictionary = ShadowDictionary()
    
    public func englishToShadow(_ text: String) -> String
    {
        return text.map {
            return dictionary.englishToShadow(String($0)) ?? String($0)
        }.joined(separator: " ")
    }
    
    public func shadowToEnglish(_ text: String) -> String
    {
        return ""
    }
    
}