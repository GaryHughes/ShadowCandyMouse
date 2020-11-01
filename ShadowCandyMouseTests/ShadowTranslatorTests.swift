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
    
}

