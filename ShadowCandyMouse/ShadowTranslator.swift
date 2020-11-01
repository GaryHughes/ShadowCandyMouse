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
            dictionary.englishToShadow(String($0)) ?? String($0)
        }.joined(separator: " ")
    }
    
    public func shadowToEnglish(_ text: String) -> String
    {
        var whitespaceAndPunctuationSet = CharacterSet.whitespacesAndNewlines
        whitespaceAndPunctuationSet.formUnion(.punctuationCharacters)

        let scanner = Scanner(string: text)
        scanner.charactersToBeSkipped = whitespaceAndPunctuationSet

        var words = [String]()
        while let word = scanner.scanUpToCharacters(from: whitespaceAndPunctuationSet) {
            words.append(word)
        }
    
        let translateRange = { (start: Int, chunk: Int) -> String? in
            let size = min(chunk, words.count - start)
            let token = words[start ..< start + size].joined(separator: " ")
            return self.dictionary.shadowToEnglish(token)
        }
        
        var letters = [String]()
        var index = 0
        
        while index < words.count {
     
            // Check for a 3 word token first eg. "MOUTH AND TONGUE"
            if let translated = translateRange(index, 3) {
                letters.append(translated)
                index += 3
                continue
            }
        
            // Then check for a two word token eg. "FIZZY DRINK"
            if let translated = translateRange(index, 2) {
                letters.append(translated)
                index += 2
                continue
            }
            
            // Then fallback to a single word
            letters.append(dictionary.shadowToEnglish(words[index]) ?? words[index])
            index += 1
        }
        
        return letters.joined()
    }
    
}
