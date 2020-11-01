//
//  TranslatorTests.swift
//  ShadowCandyMouseTests
//
//  Created by Gary Hughes on 26/8/20.
//  Copyright © 2020 Gary Hughes. All rights reserved.
//
import Foundation
import XCTest
@testable import ShadowCandyMouse

class ShadowTranslatorTests: XCTestCase
{
    let translator = ShadowTranslator()
  
    func testUppercaseEnglishToShadow() throws
    {
        XCTAssertEqual(translator.englishToShadow("CAT"), "SHADOW CANDY MOUSE")
        XCTAssertEqual(translator.englishToShadow("HI"), "MOUNTAIN PEOPLE")
    }
    
    func testLowercaseEnglishToShadow() throws
    {
        XCTAssertEqual(translator.englishToShadow("cat"), "SHADOW CANDY MOUSE")
        XCTAssertEqual(translator.englishToShadow("hi"), "MOUNTAIN PEOPLE")
    }
    
    func testUppercaseShadowToEnglish() throws
    {
        XCTAssertEqual(translator.shadowToEnglish("SHADOW CANDY MOUSE"), "CAT")
        XCTAssertEqual(translator.shadowToEnglish("MOUNTAIN PEOPLE"), "HI")
    }
    
    func testLowercaseShadowToEnglish() throws
    {
        XCTAssertEqual(translator.shadowToEnglish("shadow candy mouse"), "CAT")
        XCTAssertEqual(translator.shadowToEnglish("mountain people"), "HI")
    }
    
    func testUnknownShadowTokens() throws
    {
        XCTAssertEqual(translator.shadowToEnglish("rhubarb"), "rhubarb")
    }
    
    func testMultiwordTokens()
    {
        XCTAssertEqual(translator.shadowToEnglish("nut water"), "G")
        XCTAssertEqual(translator.shadowToEnglish("fizzy drink"), "R")
        XCTAssertEqual(translator.shadowToEnglish("bottle and nut"), "U")
        XCTAssertEqual(translator.shadowToEnglish("icecream cone"), "V")
        XCTAssertEqual(translator.shadowToEnglish("mouth and tongue"), "Y")
    }
    
    func testMultiwordTokenBackAndForth()
    {
        let shadow = translator.englishToShadow("gut")
        XCTAssertEqual(shadow, "NUT WATER BOTTLE AND NUT MOUSE")
        let english = translator.shadowToEnglish(shadow)
        XCTAssertEqual(english, "GUT")
    }
}

