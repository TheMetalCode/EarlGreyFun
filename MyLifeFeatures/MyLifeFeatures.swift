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
    
//    var personList = PersonListScreen()
//    var personDetail = PersonDetailScreen()
    
    func testSimpleCellTap() {
//        let tappedPersonName = personList.getPersonName(index: 0)
//        personList.tapPersonCell(index: 0)
//        let personDetailName = personDetail.getPersonName()
//        XCTAssertTrue(tappedPersonName == personDetailName)
        let personListName = Element()
        EarlGrey.selectElement(with: grey_accessibilityID("person-cell-0")).assert(grey_sufficientlyVisible()).perform(grey_getText(personListName)).perform(grey_tap())
        let personDetailName = Element()
        EarlGrey.selectElement(with: grey_accessibilityID("person-name")).assert(grey_sufficientlyVisible()).perform(grey_getText(personDetailName))
        XCTAssertTrue(personListName.text == personDetailName.text)
    }
    
    func testSpecificCellSelection() {}
    
    func testChangeName() {}
    
    func testChangeImage() {}
    
    func testChangeDogPreference() {}
    
    func testAddPerson() {}    
}
