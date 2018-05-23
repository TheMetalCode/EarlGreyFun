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
        let personCell = EarlGrey.selectElement(with: grey_accessibilityID("person-cell-0"))
        personCell.assert(grey_sufficientlyVisible())
        personCell.perform(grey_tap())
        // handle the alert
        EarlGrey.selectElement(with: grey_text("OK")).perform(grey_tap())
        let personImage = EarlGrey.selectElement(with: grey_accessibilityID("person-image"))
        let personName = EarlGrey.selectElement(with: grey_accessibilityID("person-name"))
        let dogSlider = EarlGrey.selectElement(with: grey_accessibilityID("dog-slider"))
        personImage.assert(grey_sufficientlyVisible())
        personName.assert(grey_sufficientlyVisible())
        dogSlider.assert(grey_sufficientlyVisible())
    }
    
    func testSpecificCellSelection() {}
    
    func testChangeName() {}
    
    func testChangeImage() {}
    
    func testChangeDogPreference() {}
    
    func testAddPerson() {}    
}
