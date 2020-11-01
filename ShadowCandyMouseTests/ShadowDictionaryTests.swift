//
//  ShadowCandyMouseTests.swift
//  ShadowCandyMouseTests
//
//  Created by Gary Hughes on 25/7/20.
//  Copyright © 2020 Gary Hughes. All rights reserved.
//
import XCTest
@testable import ShadowCandyMouse

class ShadowDictionaryTests: XCTestCase {

    let dictionary = ShadowDictionary()
  
    func testUppercaseEnglishToShadow() throws
    {
        XCTAssertEqual(dictionary.englishToShadow("A")!, "CANDY")
        XCTAssertEqual(dictionary.englishToShadow("B")!, "BOAT")
        XCTAssertEqual(dictionary.englishToShadow("C")!, "SHADOW")
        XCTAssertEqual(dictionary.englishToShadow("D")!, "SOCK")
        XCTAssertEqual(dictionary.englishToShadow("E")!, "BANANA")
        XCTAssertEqual(dictionary.englishToShadow("F")!, "KNIFE")
        XCTAssertEqual(dictionary.englishToShadow("G")!, "NUT WATER")
        XCTAssertEqual(dictionary.englishToShadow("H")!, "MOUNTAIN")
        XCTAssertEqual(dictionary.englishToShadow("I")!, "PEOPLE")
        XCTAssertEqual(dictionary.englishToShadow("J")!, "TEAR")
        XCTAssertEqual(dictionary.englishToShadow("K")!, "WIZARD")
        XCTAssertEqual(dictionary.englishToShadow("L")!, "NOSE")
        XCTAssertEqual(dictionary.englishToShadow("M")!, "GATES")
        XCTAssertEqual(dictionary.englishToShadow("N")!, "GATE")
        XCTAssertEqual(dictionary.englishToShadow("O")!, "FLOWER")
        XCTAssertEqual(dictionary.englishToShadow("P")!, "TAP")
        XCTAssertEqual(dictionary.englishToShadow("Q")!, "WIG")
        XCTAssertEqual(dictionary.englishToShadow("R")!, "FIZZY DRINK")
        XCTAssertEqual(dictionary.englishToShadow("S")!, "PERSON")
        XCTAssertEqual(dictionary.englishToShadow("T")!, "MOUSE")
        XCTAssertEqual(dictionary.englishToShadow("U")!, "BOTTLE AND NUT")
        XCTAssertEqual(dictionary.englishToShadow("V")!, "ICECREAM CONE")
        XCTAssertEqual(dictionary.englishToShadow("W")!, "TEETH")
        XCTAssertEqual(dictionary.englishToShadow("X")!, "BOX")
        XCTAssertEqual(dictionary.englishToShadow("Y")!, "MOUTH AND TONGUE")
        XCTAssertEqual(dictionary.englishToShadow("Z")!, "TRIANGLES")
    }
    
    func testLowercaseEnglishToShadow() throws
    {
        XCTAssertEqual(dictionary.englishToShadow("a")!, "CANDY")
        XCTAssertEqual(dictionary.englishToShadow("b")!, "BOAT")
        XCTAssertEqual(dictionary.englishToShadow("c")!, "SHADOW")
        XCTAssertEqual(dictionary.englishToShadow("d")!, "SOCK")
        XCTAssertEqual(dictionary.englishToShadow("e")!, "BANANA")
        XCTAssertEqual(dictionary.englishToShadow("f")!, "KNIFE")
        XCTAssertEqual(dictionary.englishToShadow("g")!, "NUT WATER")
        XCTAssertEqual(dictionary.englishToShadow("h")!, "MOUNTAIN")
        XCTAssertEqual(dictionary.englishToShadow("i")!, "PEOPLE")
        XCTAssertEqual(dictionary.englishToShadow("j")!, "TEAR")
        XCTAssertEqual(dictionary.englishToShadow("k")!, "WIZARD")
        XCTAssertEqual(dictionary.englishToShadow("l")!, "NOSE")
        XCTAssertEqual(dictionary.englishToShadow("m")!, "GATES")
        XCTAssertEqual(dictionary.englishToShadow("n")!, "GATE")
        XCTAssertEqual(dictionary.englishToShadow("o")!, "FLOWER")
        XCTAssertEqual(dictionary.englishToShadow("p")!, "TAP")
        XCTAssertEqual(dictionary.englishToShadow("q")!, "WIG")
        XCTAssertEqual(dictionary.englishToShadow("r")!, "FIZZY DRINK")
        XCTAssertEqual(dictionary.englishToShadow("s")!, "PERSON")
        XCTAssertEqual(dictionary.englishToShadow("t")!, "MOUSE")
        XCTAssertEqual(dictionary.englishToShadow("u")!, "BOTTLE AND NUT")
        XCTAssertEqual(dictionary.englishToShadow("v")!, "ICECREAM CONE")
        XCTAssertEqual(dictionary.englishToShadow("w")!, "TEETH")
        XCTAssertEqual(dictionary.englishToShadow("x")!, "BOX")
        XCTAssertEqual(dictionary.englishToShadow("y")!, "MOUTH AND TONGUE")
        XCTAssertEqual(dictionary.englishToShadow("z")!, "TRIANGLES")
    }

    func testUppercaseShadowToEnglish() throws
    {
        XCTAssertEqual(dictionary.shadowToEnglish("CANDY")!, "A")
        XCTAssertEqual(dictionary.shadowToEnglish("BOAT")!, "B")
        XCTAssertEqual(dictionary.shadowToEnglish("SHADOW")!, "C")
        XCTAssertEqual(dictionary.shadowToEnglish("SOCK")!, "D")
        XCTAssertEqual(dictionary.shadowToEnglish("BANANA")!, "E")
        XCTAssertEqual(dictionary.shadowToEnglish("KNIFE")!, "F")
        XCTAssertEqual(dictionary.shadowToEnglish("NUT WATER")!, "G")
        XCTAssertEqual(dictionary.shadowToEnglish("MOUNTAIN")!, "H")
        XCTAssertEqual(dictionary.shadowToEnglish("PEOPLE")!, "I")
        XCTAssertEqual(dictionary.shadowToEnglish("TEAR")!, "J")
        XCTAssertEqual(dictionary.shadowToEnglish("WIZARD")!, "K")
        XCTAssertEqual(dictionary.shadowToEnglish("NOSE")!, "L")
        XCTAssertEqual(dictionary.shadowToEnglish("GATES")!, "M")
        XCTAssertEqual(dictionary.shadowToEnglish("GATE")!, "N")
        XCTAssertEqual(dictionary.shadowToEnglish("FLOWER")!, "O")
        XCTAssertEqual(dictionary.shadowToEnglish("TAP")!, "P")
        XCTAssertEqual(dictionary.shadowToEnglish("WIG")!, "Q")
        XCTAssertEqual(dictionary.shadowToEnglish("FIZZY DRINK")!, "R")
        XCTAssertEqual(dictionary.shadowToEnglish("PERSON")!, "S")
        XCTAssertEqual(dictionary.shadowToEnglish("MOUSE")!, "T")
        XCTAssertEqual(dictionary.shadowToEnglish("BOTTLE AND NUT")!, "U")
        XCTAssertEqual(dictionary.shadowToEnglish("ICECREAM CONE")!, "V")
        XCTAssertEqual(dictionary.shadowToEnglish("TEETH")!, "W")
        XCTAssertEqual(dictionary.shadowToEnglish("BOX")!, "X")
        XCTAssertEqual(dictionary.shadowToEnglish("MOUTH AND TONGUE")!, "Y")
        XCTAssertEqual(dictionary.shadowToEnglish("TRIANGLES")!, "Z")
    }
    
    func testLowercaseShadowToEnglish() throws
    {
        XCTAssertEqual(dictionary.shadowToEnglish("candy")!, "A")
        XCTAssertEqual(dictionary.shadowToEnglish("boat")!, "B")
        XCTAssertEqual(dictionary.shadowToEnglish("shadow")!, "C")
        XCTAssertEqual(dictionary.shadowToEnglish("sock")!, "D")
        XCTAssertEqual(dictionary.shadowToEnglish("banana")!, "E")
        XCTAssertEqual(dictionary.shadowToEnglish("knife")!, "F")
        XCTAssertEqual(dictionary.shadowToEnglish("nut water")!, "G")
        XCTAssertEqual(dictionary.shadowToEnglish("mountain")!, "H")
        XCTAssertEqual(dictionary.shadowToEnglish("people")!, "I")
        XCTAssertEqual(dictionary.shadowToEnglish("tear")!, "J")
        XCTAssertEqual(dictionary.shadowToEnglish("wizard")!, "K")
        XCTAssertEqual(dictionary.shadowToEnglish("nose")!, "L")
        XCTAssertEqual(dictionary.shadowToEnglish("gates")!, "M")
        XCTAssertEqual(dictionary.shadowToEnglish("gate")!, "N")
        XCTAssertEqual(dictionary.shadowToEnglish("flower")!, "O")
        XCTAssertEqual(dictionary.shadowToEnglish("tap")!, "P")
        XCTAssertEqual(dictionary.shadowToEnglish("wig")!, "Q")
        XCTAssertEqual(dictionary.shadowToEnglish("fizzy drink")!, "R")
        XCTAssertEqual(dictionary.shadowToEnglish("person")!, "S")
        XCTAssertEqual(dictionary.shadowToEnglish("mouse")!, "T")
        XCTAssertEqual(dictionary.shadowToEnglish("bottle and nut")!, "U")
        XCTAssertEqual(dictionary.shadowToEnglish("icecream cone")!, "V")
        XCTAssertEqual(dictionary.shadowToEnglish("teeth")!, "W")
        XCTAssertEqual(dictionary.shadowToEnglish("box")!, "X")
        XCTAssertEqual(dictionary.shadowToEnglish("mouth and tongue")!, "Y")
        XCTAssertEqual(dictionary.shadowToEnglish("triangles")!, "Z")
    }
}
