//
//  MyLifeFeatures.swift
//  MyLifeFeatures
//
//  Created by Jason Hagglund on 3/1/18.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import EarlGrey
import XCTest

@testable import MyLife

class MyLifeFeatures: XCTestCase {
    
    func testSimpleCellTap() {
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("person-cell-0")).assert(grey_sufficientlyVisible()).perform(grey_tap())
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("person-image")).assert(grey_sufficientlyVisible())
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("person-name")).assert(grey_sufficientlyVisible())
        EarlGrey.select(elementWithMatcher: grey_accessibilityID("dog-slider")).assert(grey_sufficientlyVisible())
    }
    
    func testSpecificCellSelection() {}
    
    func testChangeName() {}
    
    func testChangeImage() {}
    
    func testChangeDogPreference() {}
    
    func testAddPerson() {}    
}
